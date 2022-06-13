# riverpod_child_provider
 
Demo of how to use parent/child of statenotifier to reuse UI

Here's the magic line:
         Text(
              ref.watch(kennelProvider).dogState.produce(),
            ),


https://user-images.githubusercontent.com/772917/173403004-709d34b9-8459-4198-b4aa-ce47b5da4e0d.mov

