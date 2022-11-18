.class public final Landroid/bluetooth/BluetoothCodecStatus;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCodecStatus$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_CODEC_STATUS:Ljava/lang/String; = "android.bluetooth.extra.CODEC_STATUS"


# instance fields
.field private final blacklist mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field private final blacklist mCodecsLocalCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCodecsSelectableCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Landroid/bluetooth/BluetoothCodecStatus$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecStatus$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothCodecConfig;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "codecsLocalCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    .local p3, "codecsSelectableCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 57
    iput-object p2, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 58
    iput-object p3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 59
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 63
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 64
    sget-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothCodecStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothCodecStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist sameCapabilities(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)Z"
        }
    .end annotation

    .line 89
    .local p0, "c1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    .local p1, "c2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 90
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 92
    :cond_1
    if-nez p1, :cond_2

    .line 93
    return v0

    .line 95
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 96
    return v0

    .line 98
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecStatus;

    .line 71
    .local v0, "other":Landroid/bluetooth/BluetoothCodecStatus;
    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 72
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 73
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 71
    :goto_0
    return v1

    .line 76
    .end local v0    # "other":Landroid/bluetooth/BluetoothCodecStatus;
    :cond_1
    return v1
.end method

.method public whitelist getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public whitelist getCodecsLocalCapabilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 207
    :goto_0
    return-object v0
.end method

.method public whitelist getCodecsSelectableCapabilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 215
    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isCodecConfigSelectable(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 5
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 109
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleSampleRate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBitsPerSample()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleChannelMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothCodecConfig;

    .line 114
    .local v2, "selectableConfig":Landroid/bluetooth/BluetoothCodecConfig;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 115
    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 139
    .end local v2    # "selectableConfig":Landroid/bluetooth/BluetoothCodecConfig;
    :cond_2
    return v0

    .line 111
    :cond_3
    :goto_1
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mCodecConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecsLocalCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecsSelectableCapabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 191
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 192
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsLocalCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 194
    return-void
.end method
