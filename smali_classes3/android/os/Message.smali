.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o FLAGS_TO_CLEAR_ON_COPY_FROM:I = 0x1

.field static final greylist-max-o FLAG_ASYNCHRONOUS:I = 0x2

.field static final greylist-max-o FLAG_IN_USE:I = 0x1

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x32

.field public static final blacklist UID_NONE:I = -0x1

.field private static greylist-max-o gCheckRecycle:Z

.field private static greylist-max-o sPool:Landroid/os/Message;

.field private static greylist-max-o sPoolSize:I

.field public static final greylist-max-o sPoolSync:Ljava/lang/Object;


# instance fields
.field public whitelist arg1:I

.field public whitelist arg2:I

.field greylist callback:Ljava/lang/Runnable;

.field greylist-max-o data:Landroid/os/Bundle;

.field greylist flags:I

.field greylist next:Landroid/os/Message;

.field public whitelist obj:Ljava/lang/Object;

.field public whitelist replyTo:Landroid/os/Messenger;

.field public whitelist sendingUid:I

.field greylist target:Landroid/os/Handler;

.field public whitelist what:I

.field public greylist when:J

.field public blacklist workSourceUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/os/Message;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    .line 608
    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 97
    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 529
    return-void
.end method

.method public static whitelist obtain()Landroid/os/Message;
    .locals 3

    .line 154
    sget-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 156
    nop

    .line 157
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v2, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 158
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 159
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->flags:I

    .line 160
    sget v2, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Message;->sPoolSize:I

    .line 161
    monitor-exit v0

    return-object v1

    .line 163
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    return-object v0

    .line 163
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static whitelist obtain(Landroid/os/Handler;)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;

    .line 197
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 200
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .line 226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 228
    iput p1, v0, Landroid/os/Message;->what:I

    .line 230
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 261
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 263
    iput p1, v0, Landroid/os/Message;->what:I

    .line 264
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 265
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 267
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 283
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 285
    iput p1, v0, Landroid/os/Message;->what:I

    .line 286
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 287
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 288
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 242
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 244
    iput p1, v0, Landroid/os/Message;->what:I

    .line 245
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 211
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 212
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 213
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 215
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Message;)Landroid/os/Message;
    .locals 3
    .param p0, "orig"    # Landroid/os/Message;

    .line 174
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "m":Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 177
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 178
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 180
    iget v1, p0, Landroid/os/Message;->sendingUid:I

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    .line 181
    iget v1, p0, Landroid/os/Message;->workSourceUid:I

    iput v1, v0, Landroid/os/Message;->workSourceUid:I

    .line 182
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 186
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 188
    return-object v0
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 661
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 664
    return-void
.end method

.method public static greylist-max-o updateCheckRecycle(I)V
    .locals 1
    .param p0, "targetSdkVersion"    # I

    .line 295
    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    .line 296
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    .line 298
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist copyFrom(Landroid/os/Message;)V
    .locals 1
    .param p1, "o"    # Landroid/os/Message;

    .line 355
    iget v0, p1, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 357
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 358
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 359
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 361
    iget v0, p1, Landroid/os/Message;->sendingUid:I

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 362
    iget v0, p1, Landroid/os/Message;->workSourceUid:I

    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 364
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_0

    .line 367
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 369
    :goto_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 578
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 579
    .local v0, "messageToken":J
    iget-wide v2, p0, Landroid/os/Message;->when:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 581
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 582
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 583
    const-wide v3, 0x10900000002L

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_0
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 588
    :goto_0
    iget v2, p0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    .line 589
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 592
    :cond_1
    iget v2, p0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    .line 593
    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 596
    :cond_2
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 597
    const-wide v3, 0x10900000006L

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 600
    :cond_3
    const-wide v2, 0x10900000007L

    iget-object v4, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    .line 602
    :cond_4
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 605
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 606
    return-void
.end method

.method public whitelist getCallback()Ljava/lang/Runnable;
    .locals 1

    .line 403
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public whitelist getData()Landroid/os/Bundle;
    .locals 1

    .line 425
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 429
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTarget()Landroid/os/Handler;
    .locals 1

    .line 391
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist getWhen()J
    .locals 2

    .line 375
    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method public whitelist isAsynchronous()Z
    .locals 1

    .line 480
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o isInUse()Z
    .locals 2

    .line 518
    iget v0, p0, Landroid/os/Message;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method greylist markInUse()V
    .locals 1

    .line 523
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 524
    return-void
.end method

.method public whitelist peekData()Landroid/os/Bundle;
    .locals 1

    .line 440
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist recycle()V
    .locals 2

    .line 309
    invoke-virtual {p0}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    sget-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    if-nez v0, :cond_0

    .line 314
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This message cannot be recycled because it is still in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    invoke-virtual {p0}, Landroid/os/Message;->recycleUnchecked()V

    .line 317
    return-void
.end method

.method greylist recycleUnchecked()V
    .locals 4

    .line 327
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 328
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/Message;->what:I

    .line 329
    iput v1, p0, Landroid/os/Message;->arg1:I

    .line 330
    iput v1, p0, Landroid/os/Message;->arg2:I

    .line 331
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 332
    iput-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 333
    const/4 v2, -0x1

    iput v2, p0, Landroid/os/Message;->sendingUid:I

    .line 334
    iput v2, p0, Landroid/os/Message;->workSourceUid:I

    .line 335
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/Message;->when:J

    .line 336
    iput-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 337
    iput-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 338
    iput-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 340
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    sget v2, Landroid/os/Message;->sPoolSize:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    .line 342
    sget-object v3, Landroid/os/Message;->sPool:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 343
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 344
    add-int/2addr v2, v0

    sput v2, Landroid/os/Message;->sPoolSize:I

    .line 346
    :cond_0
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist sendToTarget()V
    .locals 1

    .line 468
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    return-void
.end method

.method public whitelist setAsynchronous(Z)V
    .locals 1
    .param p1, "async"    # Z

    .line 510
    if-eqz p1, :cond_0

    .line 511
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    goto :goto_0

    .line 513
    :cond_0
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 515
    :goto_0
    return-void
.end method

.method public greylist setCallback(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 409
    iput-object p1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 410
    return-object p0
.end method

.method public whitelist setData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .line 450
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 451
    return-void
.end method

.method public whitelist setTarget(Landroid/os/Handler;)V
    .locals 0
    .param p1, "target"    # Landroid/os/Handler;

    .line 379
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 380
    return-void
.end method

.method public greylist-max-o setWhat(I)Landroid/os/Message;
    .locals 0
    .param p1, "what"    # I

    .line 459
    iput p1, p0, Landroid/os/Message;->what:I

    .line 460
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 533
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist toString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget-wide v1, p0, Landroid/os/Message;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 542
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 543
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 544
    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 547
    :cond_0
    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    :goto_0
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    .line 552
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    :cond_1
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_2

    .line 557
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    :cond_2
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 562
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 566
    :cond_3
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 569
    :cond_4
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    :goto_1
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist toStringLite(JZ)Ljava/lang/String;
    .locals 4
    .param p1, "now"    # J
    .param p3, "showObj"    # Z

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-wide v1, p0, Landroid/os/Message;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 672
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    const-string v2, " obj="

    const-string v3, " callback="

    if-eqz v1, :cond_3

    .line 673
    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_0
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    .line 684
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 688
    :cond_1
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_2

    .line 689
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 693
    :cond_2
    if-eqz p3, :cond_5

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 694
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 699
    :cond_3
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 702
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 703
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 706
    :cond_4
    if-eqz p3, :cond_5

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 707
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 711
    :cond_5
    :goto_0
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 626
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 630
    iget v0, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 635
    :try_start_0
    check-cast v0, Landroid/os/Parcelable;

    .line 636
    .local v0, "p":Landroid/os/Parcelable;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v0    # "p":Landroid/os/Parcelable;
    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t marshal non-Parcelable objects across processes."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    :goto_0
    iget-wide v0, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 646
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 647
    iget-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 648
    iget v0, p0, Landroid/os/Message;->sendingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    iget v0, p0, Landroid/os/Message;->workSourceUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    return-void

    .line 627
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t marshal callbacks across processes."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
