import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sun", "moon"]

  connect() {
    this.mediaQuery = window.matchMedia("(prefers-color-scheme: dark)")
    this.handleSystemThemeChange = () => {
      if (!localStorage.getItem("theme")) this.apply(this.mediaQuery.matches)
    }
    this.mediaQuery.addEventListener("change", this.handleSystemThemeChange)
    this.apply(document.documentElement.classList.contains("dark"))
  }

  disconnect() {
    this.mediaQuery.removeEventListener("change", this.handleSystemThemeChange)
  }

  toggle() {
    const dark = !document.documentElement.classList.contains("dark")
    localStorage.setItem("theme", dark ? "dark" : "light")
    this.apply(dark)
  }

  apply(dark) {
    document.documentElement.classList.toggle("dark", dark)
    document.documentElement.style.colorScheme = dark ? "dark" : "light"
    this.element.setAttribute("aria-pressed", dark.toString())
    this.element.setAttribute("aria-label", dark ? "Switch to light mode" : "Switch to dark mode")
    this.sunTarget.classList.toggle("hidden", !dark)
    this.moonTarget.classList.toggle("hidden", dark)
  }
}
