.class public final Landroid/app/AsyncNotedAppOp;
.super Ljava/lang/Object;
.source "AsyncNotedAppOp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mNotingUid:I

.field private final blacklist mOpCode:I

.field private final blacklist mTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 270
    new-instance v0, Landroid/app/AsyncNotedAppOp$1;

    invoke-direct {v0}, Landroid/app/AsyncNotedAppOp$1;-><init>()V

    sput-object v0, Landroid/app/AsyncNotedAppOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 17
    .param p1, "opCode"    # I
    .param p2, "notingUid"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "time"    # J

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-wide/from16 v2, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    move/from16 v10, p1

    iput v10, v0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    .line 116
    const-class v4, Landroid/annotation/IntRange;

    const/4 v5, 0x0

    const-string v7, "from"

    const-wide/16 v8, 0x0

    move/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 119
    move/from16 v4, p2

    iput v4, v0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    .line 120
    const-class v11, Landroid/annotation/IntRange;

    const/4 v12, 0x0

    const-string v14, "from"

    const-wide/16 v15, 0x0

    move/from16 v13, p2

    invoke-static/range {v11 .. v16}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 123
    move-object/from16 v5, p3

    iput-object v5, v0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    .line 124
    iput-object v1, v0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    .line 125
    const-class v6, Landroid/annotation/NonNull;

    const/4 v7, 0x0

    invoke-static {v6, v7, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 127
    iput-wide v2, v0, Landroid/app/AsyncNotedAppOp;->mTime:J

    .line 128
    const-class v6, Landroid/annotation/CurrentTimeMillisLong;

    invoke-static {v6, v7, v2, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    .line 131
    invoke-direct/range {p0 .. p0}, Landroid/app/AsyncNotedAppOp;->onConstructed()V

    .line 132
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 244
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 245
    .local v7, "opCode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 246
    .local v8, "notingUid":I
    and-int/lit8 v1, v0, 0x4

    const/4 v9, 0x0

    if-nez v1, :cond_0

    move-object v1, v9

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v10, v1

    .line 247
    .local v10, "attributionTag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 248
    .local v11, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 250
    .local v12, "time":J
    iput v7, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    .line 251
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const-string v4, "from"

    move v3, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 254
    iput v8, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    .line 255
    const-class v1, Landroid/annotation/IntRange;

    const-string v4, "from"

    move v3, v8

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 258
    iput-object v10, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    .line 259
    iput-object v11, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    .line 260
    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v9, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 262
    iput-wide v12, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    .line 263
    const-class v1, Landroid/annotation/CurrentTimeMillisLong;

    invoke-static {v1, v9, v12, v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    .line 266
    invoke-direct {p0}, Landroid/app/AsyncNotedAppOp;->onConstructed()V

    .line 267
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    return-void
.end method

.method private blacklist onConstructed()V
    .locals 4

    .line 71
    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    const/4 v1, 0x0

    const/16 v2, 0x78

    const-string/jumbo v3, "opCode"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 72
    return-void
.end method

.method private blacklist opCodeToString()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/app/AsyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 188
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 189
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 191
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AsyncNotedAppOp;

    .line 193
    .local v2, "that":Landroid/app/AsyncNotedAppOp;
    iget v3, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    iget v4, v2, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    iget v4, v2, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    .line 196
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    .line 197
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    iget-wide v5, v2, Landroid/app/AsyncNotedAppOp;->mTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 193
    :goto_0
    return v0

    .line 189
    .end local v2    # "that":Landroid/app/AsyncNotedAppOp;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNotingUid()I
    .locals 1

    .line 139
    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    return v0
.end method

.method public whitelist getOp()Ljava/lang/String;
    .locals 1

    .line 65
    iget v0, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTime()J
    .locals 2

    .line 163
    iget-wide v0, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 207
    const/4 v0, 0x1

    .line 208
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    add-int/2addr v1, v2

    .line 209
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    add-int/2addr v0, v2

    .line 210
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 211
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 212
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 213
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncNotedAppOp { opCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    invoke-direct {p0}, Landroid/app/AsyncNotedAppOp;->opCodeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notingUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 224
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget v1, p0, Landroid/app/AsyncNotedAppOp;->mOpCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v1, p0, Landroid/app/AsyncNotedAppOp;->mNotingUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    :cond_1
    iget-object v1, p0, Landroid/app/AsyncNotedAppOp;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-wide v1, p0, Landroid/app/AsyncNotedAppOp;->mTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    return-void
.end method
