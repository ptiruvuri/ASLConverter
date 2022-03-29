package aslconverter

/**
 * Controller class that has different methods for different actions supported by the application
 */
class HomeController {

    def index() { }

    /**
     * action method that is called when Convert to ASL button is clicked. Will render the index.gsp passing the
     * input text entered by the user. We will iterate through the input text in the index.gsp (view) and parse
     * one letter at a time in each word and load corresponding image file from the images folder
     * from within the application code(web-app/images)
     * @return
     */
    def convertToAsl() {
        render(view:"index", model:[srcText:params.srcText])
    }

    /**
     * An action method that is used to render all the 26 alphabets and  images for the corresponding finger-spelling signs.
     * @return
     */
    def showAlphabets() {
        render(view:"alphabets", model:[srcText:"A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"])
    }

    /**
     * An action that would render a view with all the sample sentences (from Dialogs 27-Comparing and
     * 28 - Pasttimes) assigned to Pavan Kumar Tiruvuri in the Assignment task.
     * @return
     */
    def sampleSentences(){
        render (view:"sampleSentences")
    }
}
