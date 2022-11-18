.class public Landroid/bluetooth/SdpDipRecord;
.super Ljava/lang/Object;
.source "SdpDipRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final blacklist mPrimaryRecord:Z

.field private final blacklist mProductId:I

.field private final blacklist mSpecificationId:I

.field private final blacklist mVendorId:I

.field private final blacklist mVendorIdSource:I

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Landroid/bluetooth/SdpDipRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpDipRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpDipRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIZ)V
    .locals 0
    .param p1, "specificationId"    # I
    .param p2, "vendorId"    # I
    .param p3, "vendorIdSource"    # I
    .param p4, "productId"    # I
    .param p5, "version"    # I
    .param p6, "primaryRecord"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/bluetooth/SdpDipRecord;->mSpecificationId:I

    .line 40
    iput p2, p0, Landroid/bluetooth/SdpDipRecord;->mVendorId:I

    .line 41
    iput p3, p0, Landroid/bluetooth/SdpDipRecord;->mVendorIdSource:I

    .line 42
    iput p4, p0, Landroid/bluetooth/SdpDipRecord;->mProductId:I

    .line 43
    iput p5, p0, Landroid/bluetooth/SdpDipRecord;->mVersion:I

    .line 44
    iput-boolean p6, p0, Landroid/bluetooth/SdpDipRecord;->mPrimaryRecord:Z

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mSpecificationId:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorId:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorIdSource:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mProductId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpDipRecord;->mVersion:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/SdpDipRecord;->mPrimaryRecord:Z

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPrimaryRecord()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Landroid/bluetooth/SdpDipRecord;->mPrimaryRecord:Z

    return v0
.end method

.method public blacklist getProductId()I
    .locals 1

    .line 69
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mProductId:I

    return v0
.end method

.method public blacklist getSpecificationId()I
    .locals 1

    .line 57
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mSpecificationId:I

    return v0
.end method

.method public blacklist getVendorId()I
    .locals 1

    .line 61
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorId:I

    return v0
.end method

.method public blacklist getVendorIdSource()I
    .locals 1

    .line 65
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorIdSource:I

    return v0
.end method

.method public blacklist getVersion()I
    .locals 1

    .line 73
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVersion:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mSpecificationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVendorIdSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/bluetooth/SdpDipRecord;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-boolean v0, p0, Landroid/bluetooth/SdpDipRecord;->mPrimaryRecord:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 88
    return-void
.end method
