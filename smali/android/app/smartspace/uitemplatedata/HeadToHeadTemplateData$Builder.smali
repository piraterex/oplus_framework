.class public final Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
.source "HeadToHeadTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private blacklist mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private blacklist mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private blacklist mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private blacklist mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private blacklist mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 218
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    .line 219
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .locals 1

    .line 204
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;
    .locals 17

    .line 284
    move-object/from16 v0, p0

    new-instance v16, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getTemplateType()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v3

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSubtitleSupplemtnalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->getLayoutWeight()I

    move-result v8

    iget-object v9, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v10, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v11, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v12, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v13, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v14, v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData-IA;)V

    .line 284
    return-object v16
.end method

.method public whitelist setHeadToHeadAction(Landroid/app/smartspace/uitemplatedata/TapAction;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 275
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 276
    return-object p0
.end method

.method public whitelist setHeadToHeadFirstCompetitorIcon(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadFirstCompetitorIcon"    # Landroid/app/smartspace/uitemplatedata/Icon;

    .line 236
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 237
    return-object p0
.end method

.method public whitelist setHeadToHeadFirstCompetitorText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadFirstCompetitorText"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 256
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 257
    return-object p0
.end method

.method public whitelist setHeadToHeadSecondCompetitorIcon(Landroid/app/smartspace/uitemplatedata/Icon;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadSecondCompetitorIcon"    # Landroid/app/smartspace/uitemplatedata/Icon;

    .line 246
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    .line 247
    return-object p0
.end method

.method public whitelist setHeadToHeadSecondCompetitorText(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadSecondCompetitorText"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 266
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    .line 267
    return-object p0
.end method

.method public whitelist setHeadToHeadTitle(Landroid/app/smartspace/uitemplatedata/Text;)Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    .locals 0
    .param p1, "headToHeadTitle"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 226
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    .line 227
    return-object p0
.end method
