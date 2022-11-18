.class public final Landroid/bluetooth/OobData;
.super Ljava/lang/Object;
.source "OobData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/OobData$ClassicBuilder;,
        Landroid/bluetooth/OobData$LeBuilder;,
        Landroid/bluetooth/OobData$LeFlag;,
        Landroid/bluetooth/OobData$LeRole;
    }
.end annotation


# static fields
.field public static final whitelist CLASS_OF_DEVICE_OCTETS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONFIRMATION_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/OobData;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_ADDRESS_OCTETS:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_APPEARANCE_OCTETS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_FLAG_OCTETS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_BOTH_PREFER_CENTRAL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_BOTH_PREFER_PERIPHERAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_CENTRAL_ONLY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_OCTETS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_DEVICE_ROLE_PERIPHERAL_ONLY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_BREDR_NOT_SUPPORTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_GENERAL_DISCOVERY_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_LIMITED_DISCOVERY_MODE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_SIMULTANEOUS_CONTROLLER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_FLAG_SIMULTANEOUS_HOST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LE_TK_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OOB_LENGTH_OCTETS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RANDOMIZER_OCTETS:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OobData"


# instance fields
.field private blacklist mClassOfDevice:[B

.field private final blacklist mClassicLength:[B

.field private final blacklist mConfirmationHash:[B

.field private final blacklist mDeviceAddressWithType:[B

.field private blacklist mDeviceName:[B

.field private blacklist mLeAppearance:[B

.field private final blacklist mLeDeviceRole:I

.field private blacklist mLeFlags:I

.field private blacklist mLeTemporaryKey:[B

.field private blacklist mRandomizerHash:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClassOfDevice(Landroid/bluetooth/OobData;)[B
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceName(Landroid/bluetooth/OobData;)[B
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeAppearance(Landroid/bluetooth/OobData;)[B
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeFlags(Landroid/bluetooth/OobData;)I
    .locals 0

    iget p0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeTemporaryKey(Landroid/bluetooth/OobData;)[B
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClassOfDevice(Landroid/bluetooth/OobData;[B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceName(Landroid/bluetooth/OobData;[B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeAppearance(Landroid/bluetooth/OobData;[B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeFlags(Landroid/bluetooth/OobData;I)V
    .locals 0

    iput p1, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeTemporaryKey(Landroid/bluetooth/OobData;[B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRandomizerHash(Landroid/bluetooth/OobData;[B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 904
    new-instance v0, Landroid/bluetooth/OobData$1;

    invoke-direct {v0}, Landroid/bluetooth/OobData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 660
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 669
    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 673
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 674
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 675
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 861
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x6ct
        0x75t
        0x65t
        0x74t
        0x6ft
        0x6ft
        0x74t
        0x68t
        0x20t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/OobData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([BI[B)V
    .locals 2
    .param p1, "deviceAddressWithType"    # [B
    .param p2, "leDeviceRole"    # I
    .param p3, "confirmationHash"    # [B

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 660
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 669
    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 673
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 674
    const/4 v0, 0x2

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 675
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 839
    iput-object p1, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    .line 840
    iput p2, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    .line 841
    iput-object p3, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    .line 842
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    .line 843
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x6ct
        0x75t
        0x65t
        0x74t
        0x6ft
        0x6ft
        0x74t
        0x68t
        0x20t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method synthetic constructor blacklist <init>([BI[BLandroid/bluetooth/OobData-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/OobData;-><init>([BI[B)V

    return-void
.end method

.method private constructor blacklist <init>([B[B[B)V
    .locals 2
    .param p1, "classicLength"    # [B
    .param p2, "deviceAddressWithType"    # [B
    .param p3, "confirmationHash"    # [B

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 660
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 669
    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 673
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 674
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 675
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 828
    iput-object p1, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    .line 829
    iput-object p2, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    .line 830
    iput-object p3, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    .line 831
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    .line 832
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x6ct
        0x75t
        0x65t
        0x74t
        0x6ft
        0x6ft
        0x74t
        0x68t
        0x20t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method synthetic constructor blacklist <init>([B[B[BLandroid/bluetooth/OobData-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/OobData;-><init>([B[B[B)V

    return-void
.end method

.method private blacklist toHexString(B)Ljava/lang/String;
    .locals 2
    .param p1, "b"    # B

    .line 946
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-direct {p0, v0}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist toHexString(I)Ljava/lang/String;
    .locals 3
    .param p1, "b"    # I

    .line 941
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-direct {p0, v0}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist toHexString([B)Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [B

    .line 951
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    return-object v0

    .line 952
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 953
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p1, v3

    .line 954
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 956
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClassOfDevice()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 751
    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    return-object v0
.end method

.method public whitelist getClassicLength()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 738
    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    return-object v0
.end method

.method public whitelist getConfirmationHash()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 701
    iget-object v0, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    return-object v0
.end method

.method public whitelist getDeviceAddressWithType()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 689
    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    return-object v0
.end method

.method public whitelist getDeviceName()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 726
    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    return-object v0
.end method

.method public whitelist getLeAppearance()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 775
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    return-object v0
.end method

.method public whitelist getLeDeviceRole()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 820
    iget v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    return v0
.end method

.method public whitelist getLeFlags()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 800
    iget v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    return v0
.end method

.method public whitelist getLeTemporaryKey()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 762
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    return-object v0
.end method

.method public whitelist getRandomizerHash()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 713
    iget-object v0, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OobData: \n\tDevice Address With Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    .line 925
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tConfirmation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    .line 926
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tRandomizer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    .line 927
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tDevice Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    .line 928
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tOobData Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    .line 930
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tClass of Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    .line 931
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Device Role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    .line 933
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Temporary Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    .line 934
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Appearance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    .line 935
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tLE Flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    .line 936
    invoke-direct {p0, v1}, Landroid/bluetooth/OobData;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 878
    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceAddressWithType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 880
    iget-object v0, p0, Landroid/bluetooth/OobData;->mConfirmationHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 882
    iget-object v0, p0, Landroid/bluetooth/OobData;->mRandomizerHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 884
    iget-object v0, p0, Landroid/bluetooth/OobData;->mDeviceName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 888
    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassicLength:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 890
    iget-object v0, p0, Landroid/bluetooth/OobData;->mClassOfDevice:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 894
    iget v0, p0, Landroid/bluetooth/OobData;->mLeDeviceRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeTemporaryKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 898
    iget-object v0, p0, Landroid/bluetooth/OobData;->mLeAppearance:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 900
    iget v0, p0, Landroid/bluetooth/OobData;->mLeFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    return-void
.end method
