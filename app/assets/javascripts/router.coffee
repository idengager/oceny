# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'submissions', () ->
  @resource 'pending_submissions', path: '/submissions/pending'
  @resource 'submission', path: '/submissions/:id'
  @route 'results', path: '/results'
  @resource 'form', () ->
    @route('edit')
