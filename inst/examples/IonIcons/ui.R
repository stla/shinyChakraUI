library(shiny)
library(shinyChakraUI)

shinyUI(
  chakraPage(
    br(),
    chakraComponent(
      "mycomponent",

      Tag$Text(
        fontSize = "xl",
        "These are the ",
        Tag$Link(
          color = "blue.500",
          href = "https://ionic.io/ionicons",
          "ionicons."
        )
      ),

      br(), Tag$Divider(), br(),

      Tag$SimpleGrid(
        columns = 12,
        spacingX = "20px",
        spacingY = "20px",
        Tag$Tooltip(
          label = "AccessibilityOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AccessibilityOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AccessibilitySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AccessibilitySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AccessibilityIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AccessibilityIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AddCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AddCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AddCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AddCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AddCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AddCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AddOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AddOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AddSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AddSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AddIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AddIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AirplaneOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AirplaneOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AirplaneSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AirplaneSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AirplaneIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AirplaneIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlarmOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlarmOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlarmSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlarmSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlarmIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlarmIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlbumsOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlbumsOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlbumsSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlbumsSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlbumsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlbumsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlertCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlertCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlertCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlertCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlertCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlertCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlertOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlertOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlertSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlertSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AlertIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AlertIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AmericanFootballOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AmericanFootballOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AmericanFootballSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AmericanFootballSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AmericanFootballIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AmericanFootballIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AnalyticsOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AnalyticsOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AnalyticsSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AnalyticsSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AnalyticsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AnalyticsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ApertureOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ApertureOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ApertureSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ApertureSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ApertureIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ApertureIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AppsOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AppsOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AppsSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AppsSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AppsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AppsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArchiveOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArchiveOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArchiveSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArchiveSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArchiveIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArchiveIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowBackCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowBackCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowBackCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowBackCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowBackCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowBackCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowBackOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowBackOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowBackSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowBackSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowBackIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowBackIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowDownCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowDownCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowDownCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowDownCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowDownCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowDownCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowDownOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowDownOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowDownSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowDownSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowDownIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowDownIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowForwardCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowForwardCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowForwardCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowForwardCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowForwardCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowForwardCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowForwardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowForwardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowForwardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowForwardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowForwardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowForwardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowRedoCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowRedoCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowRedoCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowRedoCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowRedoCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowRedoCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowRedoOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowRedoOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowRedoSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowRedoSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowRedoIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowRedoIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUndoCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUndoCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUndoCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUndoCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUndoCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUndoCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUndoOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUndoOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUndoSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUndoSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUndoIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUndoIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUpCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUpCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUpCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUpCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUpCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUpCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUpOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUpOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUpSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUpSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ArrowUpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ArrowUpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AtCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AtCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AtCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AtCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AtCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AtCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AtOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AtOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AtSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AtSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AtIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AtIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AttachOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AttachOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AttachSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AttachSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "AttachIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$AttachIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BackspaceOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BackspaceOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BackspaceSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BackspaceSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BackspaceIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BackspaceIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagAddOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagAddOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagAddSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagAddSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagAddIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagAddIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagCheckOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagCheckOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagCheckSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagCheckSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagCheckIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagCheckIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagHandleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagHandleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagHandleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagHandleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagHandleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagHandleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagRemoveOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagRemoveOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagRemoveSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagRemoveSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagRemoveIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagRemoveIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BagIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BagIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BalloonOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BalloonOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BalloonSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BalloonSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BalloonIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BalloonIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BanOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BanOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BanSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BanSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BanIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BanIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BandageOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BandageOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BandageSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BandageSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BandageIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BandageIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BarChartOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BarChartOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BarChartSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BarChartSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BarChartIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BarChartIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BarbellOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BarbellOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BarbellSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BarbellSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BarbellIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BarbellIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BarcodeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BarcodeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BarcodeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BarcodeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BarcodeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BarcodeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BaseballOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BaseballOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BaseballSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BaseballSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BaseballIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BaseballIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BasketOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BasketOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BasketSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BasketSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BasketIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BasketIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BasketballOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BasketballOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BasketballSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BasketballSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BasketballIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BasketballIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryChargingOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryChargingOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryChargingSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryChargingSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryChargingIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryChargingIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryDeadOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryDeadOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryDeadSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryDeadSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryDeadIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryDeadIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryFullOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryFullOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryFullSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryFullSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryFullIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryFullIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryHalfOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryHalfOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryHalfSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryHalfSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BatteryHalfIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BatteryHalfIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BeakerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BeakerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BeakerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BeakerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BeakerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BeakerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BedOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BedOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BedSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BedSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BedIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BedIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BeerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BeerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BeerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BeerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BeerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BeerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BicycleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BicycleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BicycleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BicycleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BicycleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BicycleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BluetoothOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BluetoothOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BluetoothSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BluetoothSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BluetoothIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BluetoothIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BoatOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BoatOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BoatSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BoatSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BoatIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BoatIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BodyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BodyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BodySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BodySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BodyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BodyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BonfireOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BonfireOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BonfireSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BonfireSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BonfireIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BonfireIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BookOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BookOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BookSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BookSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BookIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BookIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BookmarkOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BookmarkOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BookmarkSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BookmarkSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BookmarkIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BookmarkIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BookmarksOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BookmarksOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BookmarksSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BookmarksSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BookmarksIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BookmarksIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BowlingBallOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BowlingBallOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BowlingBallSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BowlingBallSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BowlingBallIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BowlingBallIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BriefcaseOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BriefcaseOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BriefcaseSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BriefcaseSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BriefcaseIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BriefcaseIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BrowsersOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BrowsersOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BrowsersSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BrowsersSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BrowsersIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BrowsersIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BrushOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BrushOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BrushSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BrushSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BrushIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BrushIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BugOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BugOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BugSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BugSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BugIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BugIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BuildOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BuildOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BuildSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BuildSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BuildIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BuildIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BulbOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BulbOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BulbSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BulbSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BulbIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BulbIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BusOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BusOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BusSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BusSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BusIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BusIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BusinessOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BusinessOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BusinessSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BusinessSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "BusinessIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$BusinessIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CafeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CafeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CafeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CafeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CafeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CafeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalculatorOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalculatorOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalculatorSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalculatorSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalculatorIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalculatorIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalendarClearOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalendarClearOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalendarClearSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalendarClearSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalendarClearIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalendarClearIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalendarNumberOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalendarNumberOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalendarNumberSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalendarNumberSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalendarNumberIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalendarNumberIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalendarOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalendarOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalendarSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalendarSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CalendarIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CalendarIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CallOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CallOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CallSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CallSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CallIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CallIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CameraOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CameraOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CameraReverseOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CameraReverseOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CameraReverseSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CameraReverseSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CameraReverseIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CameraReverseIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CameraSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CameraSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CameraIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CameraIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CarOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CarOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CarSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CarSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CarSportOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CarSportOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CarSportSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CarSportSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CarSportIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CarSportIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CarIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CarIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretBackCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretBackCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretBackCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretBackCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretBackCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretBackCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretBackOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretBackOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretBackSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretBackSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretBackIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretBackIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretDownCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretDownCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretDownCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretDownCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretDownCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretDownCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretDownOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretDownOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretDownSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretDownSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretDownIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretDownIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretForwardCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretForwardCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretForwardCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretForwardCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretForwardCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretForwardCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretForwardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretForwardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretForwardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretForwardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretForwardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretForwardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretUpCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretUpCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretUpCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretUpCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretUpCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretUpCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretUpOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretUpOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretUpSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretUpSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CaretUpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CaretUpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CartOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CartOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CartSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CartSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CartIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CartIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CashOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CashOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CashSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CashSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CashIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CashIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CellularOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CellularOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CellularSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CellularSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CellularIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CellularIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatboxEllipsesOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatboxEllipsesOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatboxEllipsesSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatboxEllipsesSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatboxEllipsesIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatboxEllipsesIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatboxOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatboxOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatboxSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatboxSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatboxIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatboxIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatbubbleEllipsesOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatbubbleEllipsesOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatbubbleEllipsesSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatbubbleEllipsesSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatbubbleEllipsesIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatbubbleEllipsesIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatbubbleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatbubbleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatbubbleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatbubbleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatbubbleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatbubbleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatbubblesOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatbubblesOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatbubblesSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatbubblesSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChatbubblesIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChatbubblesIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckboxOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckboxOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckboxSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckboxSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckboxIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckboxIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkDoneCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkDoneCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkDoneCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkDoneCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkDoneCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkDoneCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkDoneOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkDoneOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkDoneSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkDoneSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkDoneIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkDoneIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CheckmarkIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CheckmarkIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronBackCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronBackCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronBackCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronBackCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronBackCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronBackCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronBackOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronBackOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronBackSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronBackSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronBackIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronBackIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronDownCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronDownCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronDownCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronDownCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronDownCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronDownCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronDownOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronDownOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronDownSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronDownSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronDownIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronDownIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronForwardCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronForwardCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronForwardCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronForwardCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronForwardCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronForwardCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronForwardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronForwardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronForwardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronForwardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronForwardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronForwardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronUpCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronUpCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronUpCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronUpCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronUpCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronUpCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronUpOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronUpOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronUpSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronUpSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ChevronUpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ChevronUpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ClipboardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ClipboardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ClipboardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ClipboardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ClipboardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ClipboardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloseCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloseCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloseCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloseCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloseCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloseCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloseOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloseOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloseSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloseSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloseIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloseIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudDoneOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudDoneOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudDoneSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudDoneSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudDoneIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudDoneIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudDownloadOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudDownloadOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudDownloadSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudDownloadSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudDownloadIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudDownloadIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudOfflineOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudOfflineOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudOfflineSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudOfflineSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudOfflineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudOfflineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudUploadOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudUploadOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudUploadSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudUploadSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudUploadIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudUploadIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudyNightOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudyNightOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudyNightSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudyNightSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudyNightIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudyNightIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CloudyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CloudyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeDownloadOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeDownloadOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeDownloadSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeDownloadSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeDownloadIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeDownloadIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeSlashOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeSlashOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeSlashSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeSlashSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeSlashIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeSlashIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeWorkingOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeWorkingOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeWorkingSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeWorkingSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeWorkingIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeWorkingIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CodeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CodeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CogOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CogOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CogSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CogSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CogIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CogIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorFillOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorFillOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorFillSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorFillSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorFillIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorFillIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorFilterOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorFilterOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorFilterSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorFilterSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorFilterIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorFilterIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorPaletteOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorPaletteOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorPaletteSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorPaletteSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorPaletteIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorPaletteIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorWandOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorWandOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorWandSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorWandSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ColorWandIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ColorWandIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CompassOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CompassOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CompassSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CompassSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CompassIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CompassIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ConstructOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ConstructOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ConstructSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ConstructSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ConstructIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ConstructIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ContractOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ContractOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ContractSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ContractSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ContractIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ContractIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ContrastOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ContrastOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ContrastSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ContrastSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ContrastIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ContrastIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CopyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CopyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CopySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CopySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CopyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CopyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CreateOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CreateOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CreateSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CreateSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CreateIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CreateIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CropOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CropOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CropSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CropSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CropIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CropIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CubeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CubeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CubeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CubeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CubeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CubeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CutOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CutOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CutSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CutSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "CutIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$CutIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DesktopOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DesktopOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DesktopSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DesktopSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DesktopIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DesktopIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DiamondOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DiamondOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DiamondSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DiamondSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DiamondIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DiamondIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DiceOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DiceOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DiceSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DiceSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DiceIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DiceIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DiscOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DiscOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DiscSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DiscSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DiscIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DiscIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentAttachOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentAttachOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentAttachSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentAttachSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentAttachIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentAttachIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentLockOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentLockOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentLockSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentLockSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentLockIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentLockIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentTextOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentTextOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentTextSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentTextSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentTextIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentTextIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentsOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentsOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentsSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentsSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DocumentsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DocumentsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DownloadOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DownloadOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DownloadSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DownloadSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DownloadIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DownloadIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DuplicateOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DuplicateOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DuplicateSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DuplicateSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "DuplicateIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$DuplicateIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EarOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EarOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EarSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EarSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EarIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EarIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EarthOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EarthOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EarthSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EarthSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EarthIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EarthIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EaselOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EaselOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EaselSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EaselSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EaselIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EaselIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EggOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EggOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EggSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EggSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EggIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EggIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipseOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipseOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipseSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipseSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipseIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipseIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisHorizontalCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisHorizontalCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisHorizontalCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisHorizontalCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisHorizontalCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisHorizontalCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisHorizontalOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisHorizontalOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisHorizontalSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisHorizontalSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisHorizontalIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisHorizontalIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisVerticalCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisVerticalCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisVerticalCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisVerticalCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisVerticalCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisVerticalCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisVerticalOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisVerticalOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisVerticalSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisVerticalSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EllipsisVerticalIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EllipsisVerticalIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EnterOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EnterOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EnterSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EnterSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EnterIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EnterIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ExitOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ExitOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ExitSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ExitSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ExitIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ExitIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ExpandOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ExpandOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ExpandSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ExpandSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ExpandIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ExpandIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ExtensionPuzzleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ExtensionPuzzleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ExtensionPuzzleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ExtensionPuzzleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ExtensionPuzzleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ExtensionPuzzleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EyeOffOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EyeOffOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EyeOffSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EyeOffSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EyeOffIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EyeOffIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EyeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EyeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EyeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EyeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EyeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EyeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EyedropOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EyedropOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EyedropSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EyedropSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "EyedropIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$EyedropIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FastFoodOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FastFoodOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FastFoodSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FastFoodSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FastFoodIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FastFoodIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FemaleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FemaleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FemaleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FemaleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FemaleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FemaleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FileTrayFullOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FileTrayFullOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FileTrayFullSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FileTrayFullSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FileTrayFullIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FileTrayFullIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FileTrayOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FileTrayOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FileTraySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FileTraySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FileTrayStackedOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FileTrayStackedOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FileTrayStackedSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FileTrayStackedSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FileTrayStackedIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FileTrayStackedIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FileTrayIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FileTrayIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FilmOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FilmOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FilmSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FilmSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FilmIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FilmIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FilterCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FilterCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FilterCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FilterCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FilterCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FilterCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FilterOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FilterOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FilterSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FilterSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FilterIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FilterIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FingerPrintOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FingerPrintOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FingerPrintSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FingerPrintSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FingerPrintIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FingerPrintIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FishOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FishOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FishSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FishSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FishIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FishIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FitnessOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FitnessOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FitnessSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FitnessSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FitnessIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FitnessIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlagOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlagOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlagSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlagSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlagIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlagIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlameOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlameOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlameSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlameSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlameIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlameIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlashOffOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlashOffOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlashOffSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlashOffSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlashOffIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlashOffIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlashOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlashOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlashSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlashSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlashIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlashIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlashlightOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlashlightOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlashlightSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlashlightSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlashlightIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlashlightIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlaskOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlaskOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlaskSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlaskSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlaskIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlaskIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlowerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlowerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlowerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlowerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FlowerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FlowerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FolderOpenOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FolderOpenOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FolderOpenSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FolderOpenSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FolderOpenIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FolderOpenIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FolderOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FolderOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FolderSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FolderSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FolderIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FolderIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FootballOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FootballOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FootballSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FootballSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FootballIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FootballIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FootstepsOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FootstepsOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FootstepsSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FootstepsSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FootstepsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FootstepsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FunnelOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FunnelOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FunnelSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FunnelSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "FunnelIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$FunnelIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GameControllerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GameControllerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GameControllerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GameControllerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GameControllerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GameControllerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GiftOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GiftOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GiftSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GiftSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GiftIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GiftIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitBranchOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitBranchOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitBranchSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitBranchSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitBranchIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitBranchIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitCommitOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitCommitOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitCommitSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitCommitSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitCommitIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitCommitIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitCompareOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitCompareOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitCompareSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitCompareSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitCompareIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitCompareIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitMergeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitMergeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitMergeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitMergeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitMergeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitMergeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitNetworkOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitNetworkOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitNetworkSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitNetworkSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitNetworkIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitNetworkIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitPullRequestOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitPullRequestOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitPullRequestSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitPullRequestSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GitPullRequestIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GitPullRequestIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GlassesOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GlassesOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GlassesSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GlassesSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GlassesIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GlassesIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GlobeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GlobeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GlobeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GlobeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GlobeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GlobeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GolfOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GolfOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GolfSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GolfSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GolfIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GolfIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GridOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GridOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GridSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GridSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "GridIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$GridIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HammerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HammerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HammerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HammerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HammerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HammerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HandLeftOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HandLeftOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HandLeftSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HandLeftSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HandLeftIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HandLeftIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HandRightOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HandRightOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HandRightSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HandRightSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HandRightIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HandRightIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HappyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HappyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HappySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HappySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HappyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HappyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HardwareChipOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HardwareChipOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HardwareChipSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HardwareChipSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HardwareChipIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HardwareChipIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeadsetOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeadsetOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeadsetSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeadsetSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeadsetIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeadsetIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartDislikeCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartDislikeCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartDislikeCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartDislikeCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartDislikeCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartDislikeCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartDislikeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartDislikeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartDislikeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartDislikeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartDislikeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartDislikeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartHalfOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartHalfOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartHalfSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartHalfSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartHalfIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartHalfIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HeartIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HeartIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HelpBuoyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HelpBuoyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HelpBuoySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HelpBuoySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HelpBuoyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HelpBuoyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HelpCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HelpCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HelpCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HelpCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HelpCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HelpCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HelpOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HelpOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HelpSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HelpSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HelpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HelpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HomeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HomeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HomeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HomeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HomeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HomeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HourglassOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HourglassOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HourglassSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HourglassSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "HourglassIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$HourglassIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "IceCreamOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$IceCreamOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "IceCreamSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$IceCreamSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "IceCreamIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$IceCreamIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "IdCardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$IdCardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "IdCardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$IdCardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "IdCardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$IdCardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ImageOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ImageOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ImageSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ImageSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ImageIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ImageIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ImagesOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ImagesOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ImagesSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ImagesSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ImagesIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ImagesIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InfiniteOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InfiniteOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InfiniteSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InfiniteSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InfiniteIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InfiniteIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InformationCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InformationCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InformationCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InformationCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InformationCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InformationCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InformationOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InformationOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InformationSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InformationSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InformationIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InformationIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InvertModeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InvertModeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InvertModeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InvertModeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "InvertModeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$InvertModeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "JournalOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$JournalOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "JournalSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$JournalSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "JournalIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$JournalIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "KeyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$KeyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "KeySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$KeySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "KeyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$KeyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "KeypadOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$KeypadOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "KeypadSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$KeypadSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "KeypadIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$KeypadIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LanguageOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LanguageOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LanguageSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LanguageSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LanguageIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LanguageIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LaptopOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LaptopOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LaptopSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LaptopSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LaptopIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LaptopIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LayersOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LayersOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LayersSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LayersSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LayersIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LayersIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LeafOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LeafOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LeafSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LeafSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LeafIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LeafIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LibraryOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LibraryOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LibrarySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LibrarySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LibraryIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LibraryIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LinkOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LinkOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LinkSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LinkSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LinkIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LinkIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ListCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ListCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ListCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ListCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ListCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ListCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ListOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ListOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ListSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ListSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ListIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ListIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LocateOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LocateOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LocateSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LocateSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LocateIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LocateIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LocationOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LocationOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LocationSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LocationSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LocationIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LocationIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LockClosedOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LockClosedOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LockClosedSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LockClosedSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LockClosedIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LockClosedIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LockOpenOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LockOpenOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LockOpenSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LockOpenSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LockOpenIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LockOpenIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogInOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogInOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogInSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogInSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogInIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogInIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogOutOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogOutOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogOutSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogOutSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogOutIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogOutIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoAlipayIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoAlipayIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoAmazonIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoAmazonIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoAmplifyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoAmplifyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoAndroidIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoAndroidIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoAngularIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoAngularIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoAppleAppstoreIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoAppleAppstoreIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoAppleArIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoAppleArIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoAppleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoAppleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoBehanceIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoBehanceIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoBitbucketIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoBitbucketIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoBitcoinIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoBitcoinIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoBufferIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoBufferIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoCapacitorIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoCapacitorIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoChromeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoChromeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoClosedCaptioningIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoClosedCaptioningIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoCodepenIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoCodepenIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoCss3IonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoCss3IonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoDesignernewsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoDesignernewsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoDeviantartIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoDeviantartIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoDiscordIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoDiscordIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoDockerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoDockerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoDribbbleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoDribbbleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoDropboxIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoDropboxIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoEdgeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoEdgeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoElectronIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoElectronIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoEuroIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoEuroIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoFacebookIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoFacebookIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoFigmaIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoFigmaIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoFirebaseIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoFirebaseIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoFirefoxIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoFirefoxIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoFlickrIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoFlickrIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoFoursquareIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoFoursquareIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoGithubIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoGithubIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoGitlabIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoGitlabIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoGooglePlaystoreIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoGooglePlaystoreIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoGoogleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoGoogleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoHackernewsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoHackernewsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoHtml5IonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoHtml5IonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoInstagramIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoInstagramIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoIonicIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoIonicIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoIonitronIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoIonitronIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoJavascriptIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoJavascriptIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoLaravelIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoLaravelIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoLinkedinIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoLinkedinIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoMarkdownIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoMarkdownIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoMastodonIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoMastodonIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoMediumIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoMediumIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoMicrosoftIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoMicrosoftIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoNoSmokingIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoNoSmokingIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoNodejsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoNodejsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoNpmIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoNpmIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoOctocatIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoOctocatIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoPaypalIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoPaypalIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoPinterestIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoPinterestIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoPlaystationIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoPlaystationIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoPwaIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoPwaIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoPythonIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoPythonIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoReactIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoReactIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoRedditIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoRedditIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoRssIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoRssIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoSassIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoSassIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoSkypeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoSkypeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoSlackIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoSlackIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoSnapchatIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoSnapchatIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoSoundcloudIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoSoundcloudIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoStackoverflowIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoStackoverflowIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoSteamIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoSteamIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoStencilIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoStencilIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoTableauIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoTableauIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoTiktokIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoTiktokIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoTumblrIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoTumblrIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoTuxIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoTuxIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoTwitchIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoTwitchIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoTwitterIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoTwitterIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoUsdIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoUsdIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoVenmoIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoVenmoIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoVercelIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoVercelIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoVimeoIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoVimeoIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoVkIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoVkIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoVueIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoVueIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoWebComponentIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoWebComponentIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoWechatIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoWechatIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoWhatsappIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoWhatsappIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoWindowsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoWindowsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoWordpressIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoWordpressIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoXboxIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoXboxIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoXingIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoXingIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoYahooIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoYahooIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoYenIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoYenIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "LogoYoutubeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$LogoYoutubeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MagnetOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MagnetOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MagnetSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MagnetSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MagnetIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MagnetIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MailOpenOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MailOpenOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MailOpenSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MailOpenSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MailOpenIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MailOpenIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MailOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MailOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MailSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MailSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MailUnreadOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MailUnreadOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MailUnreadSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MailUnreadSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MailUnreadIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MailUnreadIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MailIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MailIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MaleFemaleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MaleFemaleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MaleFemaleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MaleFemaleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MaleFemaleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MaleFemaleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MaleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MaleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MaleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MaleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MaleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MaleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ManOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ManOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ManSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ManSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ManIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ManIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MapOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MapOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MapSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MapSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MapIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MapIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MedalOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MedalOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MedalSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MedalSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MedalIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MedalIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MedicalOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MedicalOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MedicalSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MedicalSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MedicalIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MedicalIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MedkitOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MedkitOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MedkitSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MedkitSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MedkitIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MedkitIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MegaphoneOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MegaphoneOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MegaphoneSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MegaphoneSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MegaphoneIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MegaphoneIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MenuOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MenuOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MenuSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MenuSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MenuIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MenuIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicOffCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicOffCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicOffCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicOffCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicOffCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicOffCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicOffOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicOffOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicOffSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicOffSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicOffIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicOffIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MicIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MicIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MoonOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MoonOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MoonSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MoonSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MoonIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MoonIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MoveOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MoveOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MoveSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MoveSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MoveIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MoveIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MusicalNoteOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MusicalNoteOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MusicalNoteSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MusicalNoteSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MusicalNoteIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MusicalNoteIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MusicalNotesOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MusicalNotesOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MusicalNotesSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MusicalNotesSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "MusicalNotesIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$MusicalNotesIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NavigateCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NavigateCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NavigateCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NavigateCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NavigateCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NavigateCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NavigateOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NavigateOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NavigateSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NavigateSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NavigateIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NavigateIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NewspaperOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NewspaperOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NewspaperSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NewspaperSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NewspaperIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NewspaperIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsOffCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsOffCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsOffCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsOffCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsOffCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsOffCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsOffOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsOffOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsOffSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsOffSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsOffIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsOffIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NotificationsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NotificationsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NuclearOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NuclearOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NuclearSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NuclearSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NuclearIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NuclearIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NutritionOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NutritionOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NutritionSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NutritionSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "NutritionIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$NutritionIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "OpenOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$OpenOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "OpenSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$OpenSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "OpenIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$OpenIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "OptionsOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$OptionsOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "OptionsSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$OptionsSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "OptionsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$OptionsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PaperPlaneOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PaperPlaneOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PaperPlaneSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PaperPlaneSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PaperPlaneIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PaperPlaneIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PartlySunnyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PartlySunnyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PartlySunnySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PartlySunnySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PartlySunnyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PartlySunnyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PauseCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PauseCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PauseCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PauseCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PauseCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PauseCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PauseOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PauseOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PauseSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PauseSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PauseIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PauseIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PawOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PawOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PawSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PawSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PawIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PawIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PencilOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PencilOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PencilSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PencilSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PencilIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PencilIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PeopleCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PeopleCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PeopleCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PeopleCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PeopleCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PeopleCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PeopleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PeopleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PeopleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PeopleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PeopleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PeopleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonAddOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonAddOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonAddSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonAddSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonAddIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonAddIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonRemoveOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonRemoveOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonRemoveSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonRemoveSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonRemoveIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonRemoveIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PersonIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PersonIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PhoneLandscapeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PhoneLandscapeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PhoneLandscapeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PhoneLandscapeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PhoneLandscapeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PhoneLandscapeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PhonePortraitOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PhonePortraitOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PhonePortraitSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PhonePortraitSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PhonePortraitIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PhonePortraitIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PieChartOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PieChartOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PieChartSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PieChartSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PieChartIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PieChartIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PinOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PinOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PinSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PinSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PinIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PinIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PintOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PintOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PintSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PintSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PintIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PintIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PizzaOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PizzaOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PizzaSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PizzaSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PizzaIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PizzaIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlanetOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlanetOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlanetSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlanetSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlanetIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlanetIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayBackCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayBackCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayBackCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayBackCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayBackCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayBackCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayBackOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayBackOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayBackSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayBackSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayBackIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayBackIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayForwardCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayForwardCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayForwardCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayForwardCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayForwardCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayForwardCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayForwardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayForwardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayForwardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayForwardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayForwardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayForwardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipBackCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipBackCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipBackCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipBackCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipBackCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipBackCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipBackOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipBackOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipBackSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipBackSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipBackIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipBackIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipForwardCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipForwardCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipForwardCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipForwardCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipForwardCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipForwardCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipForwardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipForwardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipForwardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipForwardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlaySkipForwardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlaySkipForwardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PlayIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PlayIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PodiumOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PodiumOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PodiumSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PodiumSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PodiumIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PodiumIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PowerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PowerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PowerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PowerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PowerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PowerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PricetagOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PricetagOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PricetagSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PricetagSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PricetagIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PricetagIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PricetagsOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PricetagsOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PricetagsSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PricetagsSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PricetagsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PricetagsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PrintOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PrintOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PrintSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PrintSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PrintIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PrintIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PrismOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PrismOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PrismSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PrismSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PrismIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PrismIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PulseOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PulseOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PulseSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PulseSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PulseIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PulseIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PushOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PushOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PushSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PushSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "PushIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$PushIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "QrCodeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$QrCodeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "QrCodeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$QrCodeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "QrCodeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$QrCodeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RadioButtonOffOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RadioButtonOffOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RadioButtonOffSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RadioButtonOffSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RadioButtonOffIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RadioButtonOffIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RadioButtonOnOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RadioButtonOnOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RadioButtonOnSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RadioButtonOnSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RadioButtonOnIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RadioButtonOnIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RadioOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RadioOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RadioSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RadioSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RadioIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RadioIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RainyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RainyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RainySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RainySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RainyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RainyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReaderOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReaderOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReaderSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReaderSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReaderIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReaderIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReceiptOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReceiptOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReceiptSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReceiptSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReceiptIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReceiptIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RecordingOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RecordingOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RecordingSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RecordingSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RecordingIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RecordingIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RefreshCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RefreshCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RefreshCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RefreshCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RefreshCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RefreshCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RefreshOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RefreshOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RefreshSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RefreshSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RefreshIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RefreshIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReloadCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReloadCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReloadCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReloadCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReloadCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReloadCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReloadOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReloadOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReloadSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReloadSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReloadIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReloadIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RemoveCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RemoveCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RemoveCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RemoveCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RemoveCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RemoveCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RemoveOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RemoveOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RemoveSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RemoveSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RemoveIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RemoveIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReorderFourOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReorderFourOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReorderFourSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReorderFourSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReorderFourIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReorderFourIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReorderThreeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReorderThreeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReorderThreeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReorderThreeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReorderThreeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReorderThreeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReorderTwoOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReorderTwoOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReorderTwoSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReorderTwoSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReorderTwoIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReorderTwoIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RepeatOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RepeatOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RepeatSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RepeatSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RepeatIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RepeatIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ResizeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ResizeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ResizeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ResizeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ResizeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ResizeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RestaurantOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RestaurantOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RestaurantSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RestaurantSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RestaurantIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RestaurantIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnDownBackOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnDownBackOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnDownBackSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnDownBackSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnDownBackIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnDownBackIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnDownForwardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnDownForwardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnDownForwardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnDownForwardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnDownForwardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnDownForwardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnUpBackOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnUpBackOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnUpBackSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnUpBackSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnUpBackIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnUpBackIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnUpForwardOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnUpForwardOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnUpForwardSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnUpForwardSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ReturnUpForwardIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ReturnUpForwardIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RibbonOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RibbonOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RibbonSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RibbonSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RibbonIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RibbonIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RocketOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RocketOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RocketSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RocketSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RocketIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RocketIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RoseOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RoseOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RoseSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RoseSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "RoseIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$RoseIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SadOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SadOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SadSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SadSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SadIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SadIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SaveOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SaveOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SaveSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SaveSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SaveIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SaveIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ScaleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ScaleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ScaleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ScaleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ScaleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ScaleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ScanCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ScanCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ScanCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ScanCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ScanCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ScanCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ScanOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ScanOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ScanSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ScanSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ScanIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ScanIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SchoolOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SchoolOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SchoolSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SchoolSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SchoolIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SchoolIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SearchCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SearchCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SearchCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SearchCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SearchCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SearchCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SearchOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SearchOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SearchSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SearchSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SearchIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SearchIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SendOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SendOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SendSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SendSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SendIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SendIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ServerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ServerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ServerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ServerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ServerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ServerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SettingsOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SettingsOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SettingsSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SettingsSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SettingsIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SettingsIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShapesOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShapesOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShapesSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShapesSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShapesIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShapesIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShareOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShareOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShareSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShareSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShareSocialOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShareSocialOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShareSocialSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShareSocialSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShareSocialIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShareSocialIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShareIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShareIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShieldCheckmarkOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShieldCheckmarkOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShieldCheckmarkSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShieldCheckmarkSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShieldCheckmarkIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShieldCheckmarkIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShieldHalfOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShieldHalfOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShieldHalfSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShieldHalfSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShieldHalfIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShieldHalfIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShieldOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShieldOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShieldSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShieldSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShieldIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShieldIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShirtOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShirtOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShirtSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShirtSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShirtIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShirtIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShuffleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShuffleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShuffleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShuffleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ShuffleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ShuffleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SkullOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SkullOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SkullSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SkullSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SkullIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SkullIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SnowOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SnowOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SnowSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SnowSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SnowIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SnowIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SparklesOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SparklesOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SparklesSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SparklesSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SparklesIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SparklesIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SpeedometerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SpeedometerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SpeedometerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SpeedometerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SpeedometerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SpeedometerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SquareOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SquareOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SquareSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SquareSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SquareIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SquareIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StarHalfOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StarHalfOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StarHalfSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StarHalfSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StarHalfIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StarHalfIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StarOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StarOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StarSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StarSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StarIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StarIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StatsChartOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StatsChartOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StatsChartSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StatsChartSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StatsChartIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StatsChartIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StopCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StopCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StopCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StopCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StopCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StopCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StopOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StopOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StopSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StopSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StopIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StopIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StopwatchOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StopwatchOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StopwatchSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StopwatchSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StopwatchIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StopwatchIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StorefrontOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StorefrontOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StorefrontSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StorefrontSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "StorefrontIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$StorefrontIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SubwayOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SubwayOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SubwaySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SubwaySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SubwayIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SubwayIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SunnyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SunnyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SunnySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SunnySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SunnyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SunnyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SwapHorizontalOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SwapHorizontalOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SwapHorizontalSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SwapHorizontalSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SwapHorizontalIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SwapHorizontalIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SwapVerticalOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SwapVerticalOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SwapVerticalSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SwapVerticalSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SwapVerticalIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SwapVerticalIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SyncCircleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SyncCircleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SyncCircleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SyncCircleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SyncCircleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SyncCircleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SyncOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SyncOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SyncSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SyncSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "SyncIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$SyncIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TabletLandscapeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TabletLandscapeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TabletLandscapeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TabletLandscapeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TabletLandscapeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TabletLandscapeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TabletPortraitOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TabletPortraitOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TabletPortraitSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TabletPortraitSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TabletPortraitIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TabletPortraitIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TelescopeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TelescopeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TelescopeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TelescopeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TelescopeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TelescopeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TennisballOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TennisballOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TennisballSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TennisballSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TennisballIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TennisballIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TerminalOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TerminalOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TerminalSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TerminalSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TerminalIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TerminalIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TextOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TextOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TextSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TextSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TextIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TextIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThermometerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThermometerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThermometerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThermometerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThermometerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThermometerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThumbsDownOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThumbsDownOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThumbsDownSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThumbsDownSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThumbsDownIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThumbsDownIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThumbsUpOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThumbsUpOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThumbsUpSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThumbsUpSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThumbsUpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThumbsUpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThunderstormOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThunderstormOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThunderstormSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThunderstormSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ThunderstormIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ThunderstormIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TicketOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TicketOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TicketSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TicketSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TicketIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TicketIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TimeOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TimeOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TimeSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TimeSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TimeIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TimeIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TimerOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TimerOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TimerSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TimerSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TimerIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TimerIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TodayOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TodayOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TodaySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TodaySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TodayIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TodayIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ToggleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ToggleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ToggleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ToggleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "ToggleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$ToggleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrailSignOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrailSignOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrailSignSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrailSignSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrailSignIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrailSignIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrainOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrainOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrainSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrainSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrainIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrainIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TransgenderOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TransgenderOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TransgenderSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TransgenderSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TransgenderIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TransgenderIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrashBinOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrashBinOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrashBinSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrashBinSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrashBinIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrashBinIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrashOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrashOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrashSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrashSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrashIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrashIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrendingDownOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrendingDownOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrendingDownSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrendingDownSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrendingDownIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrendingDownIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrendingUpOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrendingUpOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrendingUpSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrendingUpSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrendingUpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrendingUpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TriangleOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TriangleOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TriangleSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TriangleSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TriangleIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TriangleIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrophyOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrophyOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrophySharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrophySharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TrophyIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TrophyIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TvOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TvOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TvSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TvSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "TvIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$TvIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "UmbrellaOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$UmbrellaOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "UmbrellaSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$UmbrellaSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "UmbrellaIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$UmbrellaIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "UnlinkOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$UnlinkOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "UnlinkSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$UnlinkSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "UnlinkIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$UnlinkIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VideocamOffOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VideocamOffOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VideocamOffSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VideocamOffSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VideocamOffIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VideocamOffIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VideocamOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VideocamOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VideocamSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VideocamSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VideocamIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VideocamIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeHighOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeHighOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeHighSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeHighSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeHighIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeHighIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeLowOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeLowOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeLowSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeLowSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeLowIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeLowIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeMediumOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeMediumOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeMediumSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeMediumSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeMediumIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeMediumIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeMuteOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeMuteOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeMuteSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeMuteSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeMuteIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeMuteIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeOffOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeOffOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeOffSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeOffSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "VolumeOffIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$VolumeOffIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WalkOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WalkOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WalkSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WalkSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WalkIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WalkIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WalletOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WalletOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WalletSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WalletSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WalletIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WalletIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WarningOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WarningOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WarningSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WarningSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WarningIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WarningIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WatchOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WatchOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WatchSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WatchSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WatchIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WatchIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WaterOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WaterOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WaterSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WaterSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WaterIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WaterIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WifiOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WifiOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WifiSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WifiSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WifiIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WifiIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WineOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WineOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WineSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WineSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WomanOutlineIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WomanOutlineIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WomanSharpIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WomanSharpIonIcon(boxSize = 61)
          )
        ),
        Tag$Tooltip(
          label = "WomanIonIcon", hasArrow = TRUE,
          Tag$Box(
            border = "1px", borderColor = "gray.200", borderRadius = "md",
            textAlign = "center",
            Tag$WomanIonIcon(boxSize = 61)
          )
        )
      )

    )
  )
)
