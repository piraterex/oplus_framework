.class public final Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;
.super Ljava/lang/Object;
.source "DemuxAlpFilterSettingsFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist section:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_tag:I

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_tag:I

    .line 26
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 129
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 132
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 143
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_tag:I

    .line 144
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    .line 145
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_0
    const-string v0, "section"

    return-object v0

    .line 136
    :pswitch_1
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 122
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 123
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 125
    :cond_1
    return v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;
    .locals 3
    .param p0, "_value"    # Z

    .line 36
    new-instance v0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist section(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 51
    new-instance v0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 118
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getNoinit()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 41
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    .locals 1

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_assertTag(I)V

    .line 56
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    return-object v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .locals 1

    .line 30
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :pswitch_0
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 104
    .local v1, "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 105
    return-void

    .line 98
    .end local v1    # "_aidl_value":Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 99
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 100
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setNoinit(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public blacklist setSection(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 81
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxAlpFilterSettingsFilterSettings;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 85
    nop

    .line 90
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
