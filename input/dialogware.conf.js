'use strict'

module.exports = {
  // Name of the organization or project this roadmap is generated for
  organization: 'dialogware',

  // Include open and closed milestones where due date is after milestonesStartDate
  milestonesStartDate: '2021-08-01T00:00:00Z', // ISO formatted timestamp

  // Include open and closed milestones where due date is before milestonesEndDate
  milestonesEndDate: '2023-11-01T00:00:00Z', // ISO formatted timestamp

  // Github repository to open open a Pull Request with the generated roadmap
  targetRepo: "dialogware/roadmap-generator",

  // List of projects that this roadmap covers
  projects: [
    {
      name: "dialogware",
      repos: [
        "dialogware/www",
        "dialogware/docs",
        "dialogware/roadmap",
      ],
    }

  ]
}
