.class public final Landroid/window/TransitionFilter$Requirement;
.super Ljava/lang/Object;
.source "TransitionFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Requirement"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionFilter$Requirement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mActivityType:I

.field public blacklist mFlags:I

.field public blacklist mModes:[I

.field public blacklist mMustBeIndependent:Z

.field public blacklist mMustBeTask:Z

.field public blacklist mNot:Z

.field public blacklist mOrder:I

.field public blacklist mTopActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 267
    new-instance v0, Landroid/window/TransitionFilter$Requirement$1;

    invoke-direct {v0}, Landroid/window/TransitionFilter$Requirement$1;-><init>()V

    sput-object v0, Landroid/window/TransitionFilter$Requirement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 171
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 176
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 179
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 181
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 185
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 171
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 176
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 179
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 181
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 195
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    .line 196
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionFilter$Requirement-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TransitionFilter$Requirement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist matchesTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 238
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 239
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 240
    :cond_1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 241
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method blacklist matches(Landroid/window/TransitionInfo;)Z
    .locals 7
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 200
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_a

    .line 201
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 202
    .local v2, "change":Landroid/window/TransitionInfo$Change;
    iget-boolean v3, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    if-eqz v3, :cond_0

    invoke-static {v2, p1}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    goto :goto_3

    .line 206
    :cond_0
    iget v3, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    if-ne v3, v1, :cond_1

    if-lez v0, :cond_1

    .line 207
    goto :goto_3

    .line 209
    :cond_1
    iget v3, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    if-eqz v3, :cond_2

    .line 210
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 211
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    iget v4, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    if-eq v3, v4, :cond_2

    .line 212
    goto :goto_3

    .line 215
    :cond_2
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/window/TransitionFilter$Requirement;->matchesTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 216
    :cond_3
    iget-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    if-eqz v3, :cond_6

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "pass":Z
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_1
    iget-object v5, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    array-length v6, v5

    if-ge v4, v6, :cond_5

    .line 219
    aget v5, v5, v4

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 220
    const/4 v3, 0x1

    .line 221
    goto :goto_2

    .line 218
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .end local v4    # "m":I
    :cond_5
    :goto_2
    if-nez v3, :cond_6

    goto :goto_3

    .line 226
    .end local v3    # "pass":Z
    :cond_6
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    iget v4, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_7

    .line 227
    goto :goto_3

    .line 229
    :cond_7
    iget-boolean v3, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_9

    .line 230
    nop

    .line 200
    .end local v2    # "change":Landroid/window/TransitionInfo$Change;
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 232
    .restart local v2    # "change":Landroid/window/TransitionInfo$Change;
    :cond_9
    return v1

    .line 234
    .end local v0    # "i":I
    .end local v2    # "change":Landroid/window/TransitionInfo$Change;
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method blacklist matches(Landroid/window/TransitionRequestInfo;)Z
    .locals 3
    .param p1, "request"    # Landroid/window/TransitionRequestInfo;

    .line 247
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    if-ne v0, v2, :cond_1

    .line 250
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/TransitionFilter$Requirement;->matchesTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 248
    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v0, "out":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    iget-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    if-eqz v1, :cond_0

    const-string v1, "NOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " independent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, " modes=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    if-eqz v1, :cond_2

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    const-string v3, ","

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    invoke-static {v2}, Landroid/window/TransitionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mustBeTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    invoke-static {v2}, Landroid/window/TransitionFilter;->-$$Nest$smcontainerOrderToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, " topActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 256
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    iget-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 259
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 260
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 264
    return-void
.end method
