.class public final Landroid/telephony/data/NetworkSliceInfo;
.super Ljava/lang/Object;
.source "NetworkSliceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/NetworkSliceInfo$Builder;,
        Landroid/telephony/data/NetworkSliceInfo$SliceStatus;,
        Landroid/telephony/data/NetworkSliceInfo$SliceServiceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/NetworkSliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_SLICE_DIFFERENTIATOR:I = 0xfffffe

.field public static final blacklist MAX_SLICE_STATUS:I = 0x5

.field public static final blacklist MIN_SLICE_DIFFERENTIATOR:I = -0x1

.field public static final blacklist MIN_SLICE_STATUS:I = 0x0

.field public static final whitelist SLICE_DIFFERENTIATOR_NO_SLICE:I = -0x1

.field public static final whitelist SLICE_SERVICE_TYPE_EMBB:I = 0x1

.field public static final whitelist SLICE_SERVICE_TYPE_MIOT:I = 0x3

.field public static final whitelist SLICE_SERVICE_TYPE_NONE:I = 0x0

.field public static final whitelist SLICE_SERVICE_TYPE_URLLC:I = 0x2

.field public static final whitelist SLICE_STATUS_ALLOWED:I = 0x2

.field public static final whitelist SLICE_STATUS_CONFIGURED:I = 0x1

.field public static final whitelist SLICE_STATUS_DEFAULT_CONFIGURED:I = 0x5

.field public static final whitelist SLICE_STATUS_REJECTED_NOT_AVAILABLE_IN_PLMN:I = 0x3

.field public static final whitelist SLICE_STATUS_REJECTED_NOT_AVAILABLE_IN_REGISTERED_AREA:I = 0x4

.field public static final whitelist SLICE_STATUS_UNKNOWN:I


# instance fields
.field private final blacklist mMappedHplmnSliceDifferentiator:I

.field private final blacklist mMappedHplmnSliceServiceType:I

.field private final blacklist mSliceDifferentiator:I

.field private final blacklist mSliceServiceType:I

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Landroid/telephony/data/NetworkSliceInfo$1;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSliceInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIII)V
    .locals 0
    .param p1, "sliceServiceType"    # I
    .param p2, "sliceDifferentiator"    # I
    .param p3, "mappedHplmnSliceServiceType"    # I
    .param p4, "mappedHplmnSliceDifferentiator"    # I
    .param p5, "status"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    .line 159
    iput p2, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    .line 160
    iput p4, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    .line 161
    iput p3, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    .line 162
    iput p5, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    .line 163
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/telephony/data/NetworkSliceInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/telephony/data/NetworkSliceInfo;-><init>(IIIII)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    .line 230
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/NetworkSliceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/NetworkSliceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist sliceServiceTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "sliceServiceType"    # I

    .line 274
    packed-switch p0, :pswitch_data_0

    .line 284
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_0
    const-string v0, "MIOT"

    return-object v0

    .line 280
    :pswitch_1
    const-string v0, "URLLC"

    return-object v0

    .line 278
    :pswitch_2
    const-string v0, "EMBB"

    return-object v0

    .line 276
    :pswitch_3
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist sliceStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "sliceStatus"    # I

    .line 289
    packed-switch p0, :pswitch_data_0

    .line 303
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :pswitch_0
    const-string v0, "DEFAULT_CONFIGURED"

    return-object v0

    .line 299
    :pswitch_1
    const-string v0, "REJECTED_NOT_AVAILABLE_IN_REGISTERED_AREA"

    return-object v0

    .line 297
    :pswitch_2
    const-string v0, "REJECTED_NOT_AVAILABLE_IN_PLMN"

    return-object v0

    .line 295
    :pswitch_3
    const-string v0, "ALLOWED"

    return-object v0

    .line 293
    :pswitch_4
    const-string v0, "CONFIGURED"

    return-object v0

    .line 291
    :pswitch_5
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 309
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 310
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 311
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/NetworkSliceInfo;

    .line 312
    .local v2, "sliceInfo":Landroid/telephony/data/NetworkSliceInfo;
    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    iget v4, v2, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 310
    .end local v2    # "sliceInfo":Landroid/telephony/data/NetworkSliceInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getMappedHplmnSliceDifferentiator()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    return v0
.end method

.method public whitelist getMappedHplmnSliceServiceType()I
    .locals 1

    .line 195
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    return v0
.end method

.method public whitelist getSliceDifferentiator()I
    .locals 1

    .line 185
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    return v0
.end method

.method public whitelist getSliceServiceType()I
    .locals 1

    .line 172
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    return v0
.end method

.method public whitelist getStatus()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 321
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 321
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SliceInfo{mSliceServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    .line 264
    invoke-static {v1}, Landroid/telephony/data/NetworkSliceInfo;->sliceServiceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSliceDifferentiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMappedHplmnSliceServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    .line 267
    invoke-static {v1}, Landroid/telephony/data/NetworkSliceInfo;->sliceServiceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMappedHplmnSliceDifferentiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    .line 269
    invoke-static {v1}, Landroid/telephony/data/NetworkSliceInfo;->sliceStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 239
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mSliceDifferentiator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mMappedHplmnSliceDifferentiator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Landroid/telephony/data/NetworkSliceInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    return-void
.end method
