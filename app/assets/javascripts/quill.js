var toolbarOptions = {
  handlers: {
    // handlers object will be merged with default handlers object
    'link': function(value) {
      if (value) {
        var href = prompt('Enter the URL');
        this.quill.format('link', link_to);
      } else {
        this.quill.format('link', false);
      }
    }
  }
}

var defaults = {
        theme: 'snow',
        modules: {
            toolbar: [
                [{ 'header': [1, 2, 3, false] }],
                [{ 'color': [] }, { 'background': [] }],
                ['bold', 'italic', 'underline', 'strike'],
                // ['link'],
                [{ 'list': 'ordered'}, { 'list': 'bullet' }],
                [{ 'indent': '-1'}, { 'indent': '+1' }],
                ['clean']                
            ]
        }
    };

//This is the global config object
Quilljs.setDefaults(defaults)