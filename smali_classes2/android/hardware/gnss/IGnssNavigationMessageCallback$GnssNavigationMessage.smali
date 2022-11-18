.class public Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;
.super Ljava/lang/Object;
.source "IGnssNavigationMessageCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssNavigationMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssNavigationMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage$GnssNavigationMessageType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATUS_PARITY_PASSED:I = 0x1

.field public static final blacklist STATUS_PARITY_REBUILT:I = 0x2

.field public static final blacklist STATUS_UNKNOWN:I


# instance fields
.field public blacklist data:[B

.field public blacklist messageId:I

.field public blacklist status:I

.field public blacklist submessageId:I

.field public blacklist svid:I

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:I

    .line 189
    iput v0, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:I

    .line 190
    iput v0, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:I

    .line 191
    iput v0, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 225
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_d

    .line 228
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 241
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 244
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 228
    return-void

    .line 242
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 241
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 244
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 230
    return-void

    .line 242
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 241
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 244
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 232
    return-void

    .line 242
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 241
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 244
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 234
    return-void

    .line 242
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 241
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 244
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 236
    return-void

    .line 242
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 241
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 244
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 238
    return-void

    .line 242
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 241
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 244
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 245
    nop

    .line 246
    return-void

    .line 242
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 227
    :cond_d
    :try_start_7
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 241
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_e

    .line 242
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_e
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 245
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 210
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->status:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->messageId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->submessageId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v1, p0, Landroid/hardware/gnss/IGnssNavigationMessageCallback$GnssNavigationMessage;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 218
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 219
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 221
    return-void
.end method
