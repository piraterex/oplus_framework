.class public final Landroid/telecom/ConnectionRequest;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConnectionRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ConnectionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final greylist-max-o mAddress:Landroid/net/Uri;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final blacklist mIsAdhocConference:Z

.field private blacklist mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

.field private greylist-max-o mRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field private final greylist-max-o mShouldShowIncomingCallUi:Z

.field private final greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mVideoState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 443
    new-instance v0, Landroid/telecom/ConnectionRequest$1;

    invoke-direct {v0}, Landroid/telecom/ConnectionRequest$1;-><init>()V

    sput-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mParticipants:Ljava/util/List;

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroid/telecom/ConnectionRequest;->mIsAdhocConference:Z

    .line 288
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/ConnectionRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 198
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 199
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 9
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "videoState"    # I

    .line 212
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 213
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;Z)V
    .locals 9
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "videoState"    # I
    .param p5, "telecomCallId"    # Ljava/lang/String;
    .param p6, "shouldShowIncomingCallUi"    # Z

    .line 234
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    .line 236
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 11
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "videoState"    # I
    .param p5, "telecomCallId"    # Ljava/lang/String;
    .param p6, "shouldShowIncomingCallUi"    # Z
    .param p7, "rttPipeFromInCall"    # Landroid/os/ParcelFileDescriptor;
    .param p8, "rttPipeToInCall"    # Landroid/os/ParcelFileDescriptor;

    .line 247
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/util/List;Z)V

    .line 249
    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/util/List;Z)V
    .locals 0
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "handle"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "videoState"    # I
    .param p5, "telecomCallId"    # Ljava/lang/String;
    .param p6, "shouldShowIncomingCallUi"    # Z
    .param p7, "rttPipeFromInCall"    # Landroid/os/ParcelFileDescriptor;
    .param p8, "rttPipeToInCall"    # Landroid/os/ParcelFileDescriptor;
    .param p10, "isAdhocConference"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .line 261
    .local p9, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 263
    iput-object p2, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    .line 264
    iput-object p3, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    .line 265
    iput p4, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    .line 266
    iput-object p5, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    .line 267
    iput-boolean p6, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    .line 268
    iput-object p7, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    .line 269
    iput-object p8, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    .line 270
    iput-object p9, p0, Landroid/telecom/ConnectionRequest;->mParticipants:Ljava/util/List;

    .line 271
    iput-boolean p10, p0, Landroid/telecom/ConnectionRequest;->mIsAdhocConference:Z

    .line 272
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/util/List;ZLandroid/telecom/ConnectionRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/util/List;Z)V

    return-void
.end method

.method private static blacklist bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 420
    if-nez p0, :cond_0

    .line 421
    const-string v0, ""

    return-object v0

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 426
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v4, "android.telecom.extra.INCOMING_CALL_ADDRESS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "android.telecom.extra.UNKNOWN_CALL_HANDLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 434
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 431
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    nop

    .line 437
    :goto_2
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 439
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x5e4b71a0 -> :sswitch_1
        -0x5a3d90c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 293
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 310
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mParticipants:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getRttPipeFromInCall()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 381
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public greylist-max-o getRttPipeToInCall()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 366
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getRttTextStream()Landroid/telecom/Connection$RttTextStream;
    .locals 3

    .line 391
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->isRequestingRtt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Landroid/telecom/Connection$RttTextStream;

    iget-object v1, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1, v2}, Landroid/telecom/Connection$RttTextStream;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-object v0

    .line 397
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTelecomCallId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 333
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVideoState()I
    .locals 1

    .line 322
    iget v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    return v0
.end method

.method public whitelist isAdhocConferenceCall()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mIsAdhocConference:Z

    return v0
.end method

.method public whitelist isRequestingRtt()Z
    .locals 1

    .line 406
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o shouldShowIncomingCallUi()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 411
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 413
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    .line 415
    invoke-static {v2}, Landroid/telecom/ConnectionRequest;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 416
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->isAdhocConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Y"

    goto :goto_1

    :cond_1
    const-string v2, "N"

    :goto_1
    aput-object v2, v0, v1

    .line 411
    const-string v1, "ConnectionRequest %s %s isAdhocConf: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 465
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 466
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 467
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 468
    iget v0, p0, Landroid/telecom/ConnectionRequest;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mShouldShowIncomingCallUi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 472
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 473
    iget-object v0, p0, Landroid/telecom/ConnectionRequest;->mParticipants:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 474
    iget-boolean v0, p0, Landroid/telecom/ConnectionRequest;->mIsAdhocConference:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    return-void
.end method
