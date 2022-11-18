.class public final Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.source "SubImageTemplateData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private final blacklist mSubImageTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Icon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILjava/util/List;Ljava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;)V
    .locals 0
    .param p1, "templateType"    # I
    .param p2, "primaryItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p3, "subtitleItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p4, "subtitleSupplementalItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p5, "supplementalLineItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p6, "supplementalAlarmItem"    # Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .param p7, "layoutWeight"    # I
    .param p10, "subImageAction"    # Landroid/app/smartspace/uitemplatedata/TapAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Icon;",
            ">;",
            "Landroid/app/smartspace/uitemplatedata/TapAction;",
            ")V"
        }
    .end annotation

    .line 72
    .local p8, "subImageTexts":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/uitemplatedata/Text;>;"
    .local p9, "subImages":Ljava/util/List;, "Ljava/util/List<Landroid/app/smartspace/uitemplatedata/Icon;>;"
    invoke-direct/range {p0 .. p7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;I)V

    .line 75
    iput-object p8, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageTexts:Ljava/util/List;

    .line 76
    iput-object p9, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImages:Ljava/util/List;

    .line 77
    iput-object p10, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILjava/util/List;Ljava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/SubImageTemplateData-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILjava/util/List;Ljava/util/List;Landroid/app/smartspace/uitemplatedata/TapAction;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0, p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(Landroid/os/Parcel;)V

    .line 57
    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageTexts:Ljava/util/List;

    .line 58
    sget-object v0, Landroid/app/smartspace/uitemplatedata/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImages:Ljava/util/List;

    .line 59
    sget-object v0, Landroid/app/smartspace/uitemplatedata/TapAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/TapAction;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 135
    :cond_1
    invoke-super {p0, p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 136
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;

    .line 137
    .local v1, "that":Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;
    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageTexts:Ljava/util/List;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageTexts:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImages:Ljava/util/List;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImages:Ljava/util/List;

    .line 138
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 137
    :goto_0
    return v0
.end method

.method public whitelist getSubImageAction()Landroid/app/smartspace/uitemplatedata/TapAction;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object v0
.end method

.method public whitelist getSubImageTexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageTexts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSubImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/uitemplatedata/Icon;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageTexts:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImages:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + SmartspaceSubImageUiTemplateData{mSubImageTexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageTexts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubImageAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageTexts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 127
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/SubImageTemplateData;->mSubImageAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 129
    return-void
.end method
