module ApplicationHelper
  def auth_label_class
    "text-sm font-semibold"
  end

  def auth_field_container_class
    "flex flex-col gap-1 my-4"
  end

  def auth_text_field_class
    "flex items-center gap-2 cursor-pointer rounded-lg border-1 border-neutral-300 bg-neutral-50 px-4 py-2 text-sm font-medium text-neutral-700 transition-colors hover:border-neutral-400 hover:bg-neutral-100 focus-within:ring-2 focus-within:ring-neutral-600 focus-within:ring-offset-1 w-full dark:border-neutral-700 dark:bg-neutral-900 dark:text-neutral-100 dark:hover:border-neutral-600 dark:hover:bg-neutral-800 dark:focus-within:ring-neutral-400 dark:focus-within:ring-offset-neutral-950"
  end

  def auth_checkbox_class
   "rounded-xl"
  end

  def form_label_class
    auth_label_class
  end

  def form_field_class
    auth_text_field_class
  end

  def call_to_action_button_large
    "inline-flex cursor-pointer items-center justify-center rounded-lg border border-slate-800 bg-slate-800 p-2 font-semibold text-white hover:bg-slate-700 focus:outline-none focus:ring-2 focus:ring-slate-600 focus:ring-offset-2 dark:border-slate-200 dark:bg-slate-100 dark:text-slate-900 dark:hover:bg-white dark:focus:ring-slate-300 dark:focus:ring-offset-neutral-950"
  end
end

