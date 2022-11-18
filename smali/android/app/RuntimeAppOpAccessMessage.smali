.class public final Landroid/app/RuntimeAppOpAccessMessage;
.super Ljava/lang/Object;
.source "RuntimeAppOpAccessMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RuntimeAppOpAccessMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mOpCode:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSamplingStrategy:I

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 218
    new-instance v0, Landroid/app/RuntimeAppOpAccessMessage$1;

    invoke-direct {v0}, Landroid/app/RuntimeAppOpAccessMessage$1;-><init>()V

    sput-object v0, Landroid/app/RuntimeAppOpAccessMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 20
    .param p1, "uid"    # I
    .param p2, "opCode"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "samplingStrategy"    # I

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    move/from16 v10, p1

    iput v10, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    .line 80
    const-class v4, Landroid/annotation/IntRange;

    const/4 v5, 0x0

    const-string v7, "from"

    const-wide/16 v8, 0x0

    move/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 83
    move/from16 v4, p2

    iput v4, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    .line 84
    const-class v11, Landroid/annotation/IntRange;

    const/4 v12, 0x0

    const-string v14, "from"

    const-wide/16 v15, 0x0

    const-string/jumbo v17, "to"

    const-wide/16 v18, 0x78

    move/from16 v13, p2

    invoke-static/range {v11 .. v19}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 88
    iput-object v1, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    .line 89
    const-class v5, Landroid/annotation/NonNull;

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 91
    move-object/from16 v5, p4

    iput-object v5, v0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    .line 92
    iput-object v2, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    .line 93
    const-class v7, Landroid/annotation/NonNull;

    invoke-static {v7, v6, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 95
    iput v3, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    .line 96
    const-class v7, Landroid/app/AppOpsManager$SamplingStrategy;

    invoke-static {v7, v6, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 100
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 19
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 187
    .local v1, "flg":B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 188
    .local v8, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 189
    .local v15, "opCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 190
    .local v13, "packageName":Ljava/lang/String;
    and-int/lit8 v2, v1, 0x8

    const/4 v14, 0x0

    if-nez v2, :cond_0

    move-object v2, v14

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v12, v2

    .line 191
    .local v12, "attributionTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 192
    .local v11, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 194
    .local v10, "samplingStrategy":I
    iput v8, v0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    .line 195
    const-class v2, Landroid/annotation/IntRange;

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const-string v5, "from"

    move v4, v8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 198
    iput v15, v0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    .line 199
    const-class v9, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v16, 0x78

    const-string v5, "from"

    const-string/jumbo v6, "to"

    move v7, v10

    .end local v10    # "samplingStrategy":I
    .local v7, "samplingStrategy":I
    move-object v10, v2

    move-object v2, v11

    .end local v11    # "message":Ljava/lang/String;
    .local v2, "message":Ljava/lang/String;
    move v11, v15

    move-object/from16 v18, v12

    .end local v12    # "attributionTag":Ljava/lang/String;
    .local v18, "attributionTag":Ljava/lang/String;
    move-object v12, v5

    move-object v5, v13

    .end local v13    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    move-wide v13, v3

    move v3, v15

    .end local v15    # "opCode":I
    .local v3, "opCode":I
    move-object v15, v6

    invoke-static/range {v9 .. v17}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 203
    iput-object v5, v0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    .line 204
    const-class v4, Landroid/annotation/NonNull;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 206
    move-object/from16 v4, v18

    .end local v18    # "attributionTag":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    iput-object v4, v0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    .line 207
    iput-object v2, v0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    .line 208
    const-class v9, Landroid/annotation/NonNull;

    invoke-static {v9, v6, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 210
    iput v7, v0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    .line 211
    const-class v9, Landroid/app/AppOpsManager$SamplingStrategy;

    invoke-static {v9, v6, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 215
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessage()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOp()Ljava/lang/String;
    .locals 1

    .line 52
    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSamplingStrategy()I
    .locals 1

    .line 155
    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    return v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 166
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    iget v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mOpCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    :cond_1
    iget-object v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget v1, p0, Landroid/app/RuntimeAppOpAccessMessage;->mSamplingStrategy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return-void
.end method
