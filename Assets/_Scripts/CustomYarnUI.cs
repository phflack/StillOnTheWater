using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Text;
using Yarn.Unity;

public class CustomYarnUI : DialogueUIBehaviour {
	public Text lineText;
    GameObject dialogueContainer;
	public float textSpeed;

    private void Awake()
    {
        // Start by hiding the container, line and option buttons
        if (dialogueContainer != null)
            dialogueContainer.SetActive(false);

        lineText.gameObject.SetActive (false);

    }
	public override IEnumerator RunLine(Yarn.Line line) {
		 // Show the text
        lineText.gameObject.SetActive (true);
        if (textSpeed > 0.0f) {
            // Display the line one character at a time
            var stringBuilder = new StringBuilder ();
            foreach (char c in line.text) {
                stringBuilder.Append (c);
                lineText.text = stringBuilder.ToString ();
                yield return new WaitForSeconds (textSpeed);
            }
        } else {
            // Display the line immediately if textSpeed == 0
            lineText.text = line.text;
        }

		// Wait for any user input
        while (Input.anyKeyDown == false) {
            yield return null;
        }

		// Hide the text and prompt
            lineText.gameObject.SetActive (false);
	}

	/// Show a list of options, and wait for the player to make a selection.
        public override IEnumerator RunOptions (Yarn.Options optionsCollection, 
                                                Yarn.OptionChooser optionChooser)
        {
            yield break;
        }

        /// Run an internal command.
        public override IEnumerator RunCommand (Yarn.Command command)
        {
            // "Perform" the command
            Debug.Log ("Command: " + command.text);

            yield break;
        }

    /// Called when the dialogue system has finished running.
        public override IEnumerator DialogueComplete ()
        {
            Debug.Log ("Complete!");

            // Hide the dialogue interface.
            if (dialogueContainer != null)
                dialogueContainer.SetActive(false);

            // // Show the game controls.
            // if (gameControlsContainer != null) {
            //     gameControlsContainer.gameObject.SetActive(true);
            // }

            yield break;
        }

        /// Called when the dialogue system has started running.
        public override IEnumerator DialogueStarted ()
        {
            Debug.Log ("Dialogue starting!");

            // Enable the dialogue controls.
            if (dialogueContainer != null)
                dialogueContainer.SetActive(true);

            // // Hide the game controls.
            // if (gameControlsContainer != null) {
            //     gameControlsContainer.gameObject.SetActive(false);
            // }

            yield break;
        }

}
