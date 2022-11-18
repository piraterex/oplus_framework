.class public final Landroid/view/ContentRecordingSession;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ContentRecordingSession$Builder;,
        Landroid/view/ContentRecordingSession$RecordContent;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/ContentRecordingSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RECORD_CONTENT_DISPLAY:I = 0x0

.field public static final blacklist RECORD_CONTENT_TASK:I = 0x1


# instance fields
.field private blacklist mContentToRecord:I

.field private blacklist mDisplayId:I

.field private blacklist mTokenToRecord:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 343
    new-instance v0, Landroid/view/ContentRecordingSession$1;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession$1;-><init>()V

    sput-object v0, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 83
    return-void
.end method

.method constructor blacklist <init>(IILandroid/os/IBinder;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "contentToRecord"    # I
    .param p3, "tokenToRecord"    # Landroid/os/IBinder;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 160
    iput p1, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    .line 161
    iput p2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 163
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentToRecord was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), RECORD_CONTENT_TASK("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_1
    :goto_0
    iput-object p3, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 172
    const-class v0, Lcom/android/internal/annotations/VisibleForTesting;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 320
    .local v2, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 321
    .local v3, "displayId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 322
    .local v4, "contentToRecord":I
    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 324
    .local v5, "tokenToRecord":Landroid/os/IBinder;
    :goto_0
    iput v3, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    .line 325
    iput v4, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 327
    if-eqz v4, :cond_2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 329
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentToRecord was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "), RECORD_CONTENT_TASK("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_2
    :goto_1
    iput-object v5, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 336
    const-class v0, Lcom/android/internal/annotations/VisibleForTesting;

    invoke-static {v0, v1, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    return-void
.end method

.method public static blacklist createDisplaySession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .locals 2
    .param p0, "displayContentWindowToken"    # Landroid/os/IBinder;

    .line 90
    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public static blacklist createTaskSession(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .locals 2
    .param p0, "taskWindowContainerToken"    # Landroid/os/IBinder;

    .line 99
    new-instance v0, Landroid/view/ContentRecordingSession;

    invoke-direct {v0}, Landroid/view/ContentRecordingSession;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ContentRecordingSession;->setContentToRecord(I)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Landroid/view/ContentRecordingSession;->setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public static blacklist isSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z
    .locals 2
    .param p0, "session"    # Landroid/view/ContentRecordingSession;
    .param p1, "incomingSession"    # Landroid/view/ContentRecordingSession;

    .line 116
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0
.end method

.method public static blacklist isValid(Landroid/view/ContentRecordingSession;)Z
    .locals 2
    .param p0, "session"    # Landroid/view/ContentRecordingSession;

    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/view/ContentRecordingSession;->getTokenToRecord()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0
.end method

.method public static blacklist recordContentToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 146
    packed-switch p0, :pswitch_data_0

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :pswitch_0
    const-string v0, "RECORD_CONTENT_TASK"

    return-object v0

    .line 148
    :pswitch_1
    const-string v0, "RECORD_CONTENT_DISPLAY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 270
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 271
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 273
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/ContentRecordingSession;

    .line 275
    .local v2, "that":Landroid/view/ContentRecordingSession;
    iget v3, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mDisplayId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    iget v4, v2, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 278
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 275
    :goto_0
    return v0

    .line 271
    .end local v2    # "that":Landroid/view/ContentRecordingSession;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getContentToRecord()I
    .locals 1

    .line 192
    iget v0, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .locals 1

    .line 184
    iget v0, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    return v0
.end method

.method public blacklist getTokenToRecord()Landroid/os/IBinder;
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 287
    const/4 v0, 0x1

    .line 288
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    add-int/2addr v1, v2

    .line 289
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    add-int/2addr v0, v2

    .line 290
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 291
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public blacklist setContentToRecord(I)Landroid/view/ContentRecordingSession;
    .locals 4
    .param p1, "value"    # I

    .line 222
    iput p1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 224
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentToRecord was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: RECORD_CONTENT_DISPLAY("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), RECORD_CONTENT_TASK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist setDisplayId(I)Landroid/view/ContentRecordingSession;
    .locals 0
    .param p1, "value"    # I

    .line 213
    iput p1, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    .line 214
    return-object p0
.end method

.method public blacklist setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession;
    .locals 2
    .param p1, "value"    # Landroid/os/IBinder;

    .line 244
    iput-object p1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    .line 245
    const-class v0, Lcom/android/internal/annotations/VisibleForTesting;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    .line 247
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentRecordingSession { displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    .line 258
    invoke-static {v1}, Landroid/view/ContentRecordingSession;->recordContentToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokenToRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "flg":B
    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 302
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 303
    iget v1, p0, Landroid/view/ContentRecordingSession;->mDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v1, p0, Landroid/view/ContentRecordingSession;->mContentToRecord:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v1, p0, Landroid/view/ContentRecordingSession;->mTokenToRecord:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 306
    :cond_1
    return-void
.end method
