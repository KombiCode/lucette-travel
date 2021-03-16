

(() => {
  const application = Stimulus.Application.start()

  application.register("todolist", class extends Stimulus.Controller {
    static get targets() {
      return ["myinput", "mylist", "nbre", "nbreal"];
    }

    addCloseButtonOnLiItem() {
      var span = document.createElement("SPAN");
      var txt = document.createTextNode("\u00D7");
      span.className = "close";
      span.appendChild(txt);
      span.dataset['action'] = "click->todolist#dropItem" ; 

      return span;
    }

    newElement(evt) {
      evt.preventDefault();
      var input = this.myinputTarget;
      if (input && input.value !== '') {
        // Create a new list item when clicking on the "Add" button
        var li = document.createElement("li");
        var t = document.createTextNode(input.value);
        li.appendChild(t);
        let span = this.addCloseButtonOnLiItem();
        li.appendChild(span);
        li.dataset['action'] = this.initToggleCheck();
        this.mylistTarget.appendChild(li);
        this.myinputTarget.value = "";
        this.nbreTarget.textContent = parseInt(this.nbreTarget.textContent) + 1;

      }
    }

    addConfigOnLiItems() {
      var nbreal = 0;
      // Create a "close" button and append it to each list item
      var myNodelist = this.mylistTarget.children;
      for (let i = 0, imax = myNodelist.length; i < imax; i++) {
        let span = this.addCloseButtonOnLiItem();
        myNodelist[i].appendChild(span);
        myNodelist[i].dataset['action'] = this.initToggleCheck();
        myNodelist[i].tabIndex = 3;
        if (myNodelist[i].classList.contains('checked')) {
          nbreal += 1;
        }
      }
      this.nbrealTarget.textContent = nbreal;
    }

    initToggleCheck() {
      return "click->todolist#execToggleCheck";
    }

    execToggleCheck(evt) {
      var nbreal = parseInt(this.nbrealTarget.textContent);
      if (evt.target.classList.contains('checked')) {
        nbreal -= 1;
      } else {
        nbreal += 1;
      }
      this.nbrealTarget.textContent = nbreal;
      evt.target.classList.toggle('checked');
    }

    dropItem(evt) {
      if (evt.target.parentNode.classList.contains('checked')) {
        let nbreal = parseInt(this.nbrealTarget.textContent) - 1;
        this.nbrealTarget.textContent = nbreal;
      }
      let item = evt.target.parentNode;
      let parent = item.parentNode;
      parent.removeChild(item);
      let nbre = parseInt(this.nbreTarget.textContent) - 1;
      if (nbre < 0) {
        nbre = 0;
      }
      this.nbreTarget.textContent = nbre;

    }

    connect() {
      this.addConfigOnLiItems();
      this.myinputTarget.focus();
    }

  })
})()
