.class public final Landroid/media/BluetoothProfileConnectionInfo;
.super Ljava/lang/Object;
.source "BluetoothProfileConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/BluetoothProfileConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsLeOutput:Z

.field private final blacklist mProfile:I

.field private final blacklist mSupprNoisy:Z

.field private final blacklist mVolume:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo$1;

    invoke-direct {v0}, Landroid/media/BluetoothProfileConnectionInfo$1;-><init>()V

    sput-object v0, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 48
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v0}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(IZIZ)V
    .locals 0
    .param p1, "profile"    # I
    .param p2, "suppressNoisyIntent"    # Z
    .param p3, "volume"    # I
    .param p4, "isLeOutput"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/media/BluetoothProfileConnectionInfo;->mProfile:I

    .line 38
    iput-boolean p2, p0, Landroid/media/BluetoothProfileConnectionInfo;->mSupprNoisy:Z

    .line 39
    iput p3, p0, Landroid/media/BluetoothProfileConnectionInfo;->mVolume:I

    .line 40
    iput-boolean p4, p0, Landroid/media/BluetoothProfileConnectionInfo;->mIsLeOutput:Z

    .line 41
    return-void
.end method

.method synthetic constructor blacklist <init>(IZIZLandroid/media/BluetoothProfileConnectionInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-void
.end method

.method public static blacklist createA2dpInfo(ZI)Landroid/media/BluetoothProfileConnectionInfo;
    .locals 3
    .param p0, "suppressNoisyIntent"    # Z
    .param p1, "volume"    # I

    .line 88
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static blacklist createA2dpSinkInfo(I)Landroid/media/BluetoothProfileConnectionInfo;
    .locals 4
    .param p0, "volume"    # I

    .line 99
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static blacklist createHearingAidInfo(Z)Landroid/media/BluetoothProfileConnectionInfo;
    .locals 4
    .param p0, "suppressNoisyIntent"    # Z

    .line 110
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/16 v1, 0x15

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static blacklist createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;
    .locals 3
    .param p0, "suppressNoisyIntent"    # Z
    .param p1, "isLeOutput"    # Z

    .line 124
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/16 v1, 0x16

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static blacklist createLeAudioInfo(ZZI)Landroid/media/BluetoothProfileConnectionInfo;
    .locals 2
    .param p0, "suppressNoisyIntent"    # Z
    .param p1, "isLeOutput"    # Z
    .param p2, "volume"    # I

    .line 141
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0, p2, p1}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProfile()I
    .locals 1

    .line 150
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mProfile:I

    return v0
.end method

.method public blacklist getVolume()I
    .locals 1

    .line 166
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mVolume:I

    return v0
.end method

.method public blacklist isLeOutput()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mIsLeOutput:Z

    return v0
.end method

.method public blacklist isSuppressNoisyIntent()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mSupprNoisy:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mProfile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 69
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mIsLeOutput:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 71
    return-void
.end method
