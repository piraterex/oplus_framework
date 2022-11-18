.class public Landroid/content/OplusBaseIntent;
.super Ljava/lang/Object;
.source "OplusBaseIntent.java"


# static fields
.field public static final whitelist FLAG_RECEIVER_OPLUSQUEUE:I = 0x80000

.field public static final whitelist FLAG_RECEIVER_QUEUE_PRIOR:I = 0x100000

.field public static final whitelist OPLUS_FLAG_ACTIVITY_KEEP_RESUM_WHEN_SLEEPING:I = 0x40000000

.field public static final whitelist OPLUS_FLAG_ACTIVITY_SECURE_POLICY:I = -0x80000000

.field public static final whitelist OPLUS_FLAG_KEEP_CHOOSER_LABEL_FOR_MULTI_APP:I = 0x2000

.field public static final whitelist OPLUS_FLAG_MULTI_APP_DIRECT_MULTI_APP:I = 0x1000

.field public static final whitelist OPLUS_FLAG_MULTI_APP_SKIP_CHOOSER:I = 0x800

.field public static final whitelist OPLUS_FLAG_MUTIL_APP:I = 0x400

.field public static final whitelist OPLUS_FLAG_MUTIL_CHOOSER:I = 0x200

.field public static final whitelist OPLUS_FLAG_RECEIVER_OPLUSQUEUE:I = 0x2

.field public static final whitelist OPLUS_FLAG_RECEIVER_QUEUE_PRIOR:I = 0x1


# instance fields
.field blacklist mCallingUid:I

.field blacklist mIsForFreeForm:I

.field blacklist mIsFromGameSpace:I

.field blacklist mOplusFlags:I

.field blacklist mOplusUserId:I

.field private blacklist mPairLaunchWindowingMode:I

.field blacklist mPid:I

.field blacklist mStackId:I

.field blacklist mStartFromOcar:I

.field blacklist mUid:I


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    .line 61
    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    .line 64
    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    .line 65
    iput v0, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/OplusBaseIntent;->mPid:I

    .line 69
    iput v1, p0, Landroid/content/OplusBaseIntent;->mUid:I

    .line 71
    iput v1, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    .line 74
    iput v0, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    .line 86
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/OplusBaseIntent;I)V
    .locals 2
    .param p1, "o"    # Landroid/content/OplusBaseIntent;
    .param p2, "copyMode"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    .line 61
    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    .line 64
    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    .line 65
    iput v0, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/OplusBaseIntent;->mPid:I

    .line 69
    iput v1, p0, Landroid/content/OplusBaseIntent;->mUid:I

    .line 71
    iput v1, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    .line 74
    iput v0, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    .line 90
    iget v0, p1, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    .line 92
    iget v0, p1, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    .line 95
    iget v0, p1, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    .line 96
    iget v0, p1, Landroid/content/OplusBaseIntent;->mStackId:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    .line 100
    iget v0, p1, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    .line 105
    iget v0, p1, Landroid/content/OplusBaseIntent;->mCallingUid:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    .line 108
    iget v0, p1, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    .line 112
    iget v0, p1, Landroid/content/OplusBaseIntent;->mPairLaunchWindowingMode:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mPairLaunchWindowingMode:I

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist addOplusFlags(I)V
    .locals 1
    .param p1, "oplusFlags"    # I

    .line 277
    iget v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    .line 278
    return-void
.end method

.method public whitelist fillIn(Landroid/content/OplusBaseIntent;I)I
    .locals 2
    .param p1, "other"    # Landroid/content/OplusBaseIntent;
    .param p2, "flags"    # I

    .line 118
    iget v0, p1, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    .line 120
    iget v0, p1, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    .line 123
    iget v0, p1, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    .line 124
    iget v0, p1, Landroid/content/OplusBaseIntent;->mStackId:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    .line 128
    iget v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    iget v1, p1, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    .line 133
    iget v0, p1, Landroid/content/OplusBaseIntent;->mCallingUid:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    .line 137
    iget v0, p1, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    .line 141
    iget v0, p1, Landroid/content/OplusBaseIntent;->mPairLaunchWindowingMode:I

    iput v0, p0, Landroid/content/OplusBaseIntent;->mPairLaunchWindowingMode:I

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingUid()I
    .locals 1

    .line 312
    iget v0, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    return v0
.end method

.method public whitelist getIsForFreeForm()I
    .locals 1

    .line 237
    iget v0, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    return v0
.end method

.method public whitelist getIsFromGameSpace()I
    .locals 1

    .line 223
    iget v0, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    return v0
.end method

.method public whitelist getLaunchStackId()I
    .locals 1

    .line 249
    iget v0, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    return v0
.end method

.method public whitelist getOplusFlags()I
    .locals 1

    .line 263
    iget v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    return v0
.end method

.method public whitelist getOplusUserId()I
    .locals 1

    .line 210
    iget v0, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    return v0
.end method

.method public blacklist getPairLaunchWindowingMode()I
    .locals 1

    .line 338
    iget v0, p0, Landroid/content/OplusBaseIntent;->mPairLaunchWindowingMode:I

    return v0
.end method

.method public whitelist getPid()I
    .locals 1

    .line 293
    iget v0, p0, Landroid/content/OplusBaseIntent;->mPid:I

    return v0
.end method

.method public whitelist getStartFromOcar()I
    .locals 1

    .line 318
    iget v0, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    return v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 301
    iget v0, p0, Landroid/content/OplusBaseIntent;->mUid:I

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/OplusBaseIntent;->mPairLaunchWindowingMode:I

    .line 203
    return-void
.end method

.method public whitelist removeOplusFlags(I)V
    .locals 2
    .param p1, "oplusFlags"    # I

    .line 284
    iget v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    .line 285
    return-void
.end method

.method public blacklist setCallingUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 308
    iput p1, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    .line 309
    return-void
.end method

.method public whitelist setIsForFreeForm(I)V
    .locals 0
    .param p1, "isForFreeForm"    # I

    .line 243
    iput p1, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    .line 244
    return-void
.end method

.method public whitelist setIsFromGameSpace(I)V
    .locals 0
    .param p1, "isFromGameSpace"    # I

    .line 229
    iput p1, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    .line 230
    return-void
.end method

.method public whitelist setLaunchStackId(I)V
    .locals 0
    .param p1, "stackId"    # I

    .line 255
    iput p1, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    .line 256
    return-void
.end method

.method public whitelist setOplusFlags(I)V
    .locals 0
    .param p1, "oplusFlags"    # I

    .line 270
    iput p1, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    .line 271
    return-void
.end method

.method public whitelist setOplusUserId(I)V
    .locals 0
    .param p1, "oplusUserId"    # I

    .line 216
    iput p1, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    .line 217
    return-void
.end method

.method public blacklist setPairLaunchWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 331
    iput p1, p0, Landroid/content/OplusBaseIntent;->mPairLaunchWindowingMode:I

    .line 332
    return-void
.end method

.method public whitelist setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 289
    iput p1, p0, Landroid/content/OplusBaseIntent;->mPid:I

    .line 290
    return-void
.end method

.method public whitelist setStartFromOcar(I)V
    .locals 0
    .param p1, "startFromOcar"    # I

    .line 322
    iput p1, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    .line 323
    return-void
.end method

.method public whitelist setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 297
    iput p1, p0, Landroid/content/OplusBaseIntent;->mUid:I

    .line 298
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 345
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    if-eqz v1, :cond_0

    .line 346
    const-string v1, " oflg=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_0
    iget v1, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    if-eqz v1, :cond_1

    .line 349
    const-string v1, " ouserid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    :cond_1
    iget v1, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    if-eqz v1, :cond_2

    .line 352
    const-string v1, " freeform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    :cond_2
    iget v1, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    if-eqz v1, :cond_3

    .line 355
    const-string v1, " gs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    :cond_3
    iget v1, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    if-eqz v1, :cond_4

    .line 358
    const-string v1, " stackid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    :cond_4
    iget v1, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 361
    const-string v1, " mCallingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    :cond_5
    iget v1, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    if-eqz v1, :cond_6

    .line 364
    const-string v1, " mStartFromOcar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 149
    iget v0, p0, Landroid/content/OplusBaseIntent;->mOplusUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/content/OplusBaseIntent;->mIsFromGameSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/content/OplusBaseIntent;->mIsForFreeForm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/content/OplusBaseIntent;->mStackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/content/OplusBaseIntent;->mOplusFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/content/OplusBaseIntent;->mCallingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/content/OplusBaseIntent;->mStartFromOcar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/content/OplusBaseIntent;->mPairLaunchWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    return-void
.end method
