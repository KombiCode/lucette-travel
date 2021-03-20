#fonction open dans show activité - enlevée

<!--
   <h3>
    <% if @activity.is_open(DateTime.now) %>
      Open
    <% else %>
      Close
      <% if @activity.is_open_tomorrow? %>
      , but open tomorrow
      <% end %>
    <% end %>
  </h3> -->

#Code carte sympa - enlever l'avatar

  <div class="min-h-screen bg-gray-200 flex justify-center items-center">
   <!-- Start of component -->
   <div class="max-w-2xl bg-white border-2 border-gray-300 p-5 rounded-md tracking-wide shadow-lg">
      <div id="header" class="flex">
         <img alt="mountain" class="w-45 rounded-md border-2 border-gray-300" src="https://picsum.photos/seed/picsum/200" />
         <div id="body" class="flex flex-col ml-5">
            <h4 id="name" class="text-xl font-semibold mb-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit</h4>
            <p id="job" class="text-gray-800 mt-2">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            <div class="flex mt-5">
               <img alt="avatar" class="w-6 rounded-full border-2 border-gray-300" src="https://picsum.photos/seed/picsum/200" />
               <p class="ml-3">John Doe</p>
            </div>
         </div>
      </div>
   </div>

carte pour les to dos

<div class="bg-blue w-full p-8 flex justify-center font-sans">
<div class="rounded bg-grey-light w-64 p-2">
  <div class="flex justify-between py-1">
    <h3 class="text-sm">New landing page</h3>
    <svg class="h-4 fill-current text-grey-dark cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5 10a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4zm7 0a1.999 1.999 0 1 0 0 4 1.999 1.999 0 1 0 0-4z"/></svg>
  </div>
  <div class="text-sm mt-2">
    <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
        Do a mobile first layout
  </div>

    <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
        Check the meta tags
  </div>

    <div class="bg-white p-2 rounded mt-1 border-b border-grey cursor-pointer hover:bg-grey-lighter">
        Check the responsive layout on all devices
        <div class="text-grey-darker mt-2 ml-2 flex justify-between items-start">
            <span class="text-xs flex items-center">
            <svg class="h-4 fill-current mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M11 4c-3.855 0-7 3.145-7 7v28c0 3.855 3.145 7 7 7h28c3.855 0 7-3.145 7-7V11c0-3.855-3.145-7-7-7zm0 2h28c2.773 0 5 2.227 5 5v28c0 2.773-2.227 5-5 5H11c-2.773 0-5-2.227-5-5V11c0-2.773 2.227-5 5-5zm25.234 9.832l-13.32 15.723-8.133-7.586-1.363 1.465 9.664 9.015 14.684-17.324z"/></svg>
                3/5
            </span>
            <img src="https://i.imgur.com/OZaT7jl.png" class="rounded-full" />
        </div>
  </div>
    <p class="mt-3 text-grey-dark">Add a card...</p>
  </div>
</div>
</div>
