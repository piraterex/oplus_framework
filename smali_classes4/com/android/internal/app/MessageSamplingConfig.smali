.class public final Lcom/android/internal/app/MessageSamplingConfig;
.super Ljava/lang/Object;
.source "MessageSamplingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/MessageSamplingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAcceptableLeftDistance:I

.field private final blacklist mExpirationTimeSinceBootMillis:J

.field private final blacklist mSampledOpCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig$1;

    invoke-direct {v0}, Lcom/android/internal/app/MessageSamplingConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/MessageSamplingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIJ)V
    .locals 20
    .param p1, "sampledOpCode"    # I
    .param p2, "acceptableLeftDistance"    # I
    .param p3, "expirationTimeSinceBootMillis"    # J

    .line 74
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    move/from16 v10, p1

    iput v10, v0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    .line 76
    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-string v4, "from"

    const-wide/16 v5, -0x1

    const-string/jumbo v7, "to"

    const-wide/16 v8, 0x78

    move/from16 v3, p1

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 80
    move/from16 v1, p2

    iput v1, v0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    .line 81
    const-class v11, Landroid/annotation/IntRange;

    const/4 v12, 0x0

    const-string v14, "from"

    const-wide/16 v15, 0x0

    const-string/jumbo v17, "to"

    const-wide/16 v18, 0x78

    move/from16 v13, p2

    invoke-static/range {v11 .. v19}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 85
    move-wide/from16 v11, p3

    iput-wide v11, v0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    .line 86
    const-class v2, Landroid/annotation/IntRange;

    const/4 v3, 0x0

    const-string v6, "from"

    const-wide/16 v7, 0x0

    move-wide/from16 v4, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 140
    .local v9, "sampledOpCode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 141
    .local v10, "acceptableLeftDistance":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 143
    .local v11, "expirationTimeSinceBootMillis":J
    iput v9, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    .line 144
    const-class v0, Landroid/annotation/IntRange;

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, -0x1

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0x78

    move v2, v9

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 148
    iput v10, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    .line 149
    const-class v0, Landroid/annotation/IntRange;

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "to"

    move v2, v10

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 153
    iput-wide v11, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    .line 154
    const-class v0, Landroid/annotation/IntRange;

    const-string v4, "from"

    const-wide/16 v5, 0x0

    move-wide v2, v11

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 159
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAcceptableLeftDistance()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    return v0
.end method

.method public blacklist getExpirationTimeSinceBootMillis()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    return-wide v0
.end method

.method public blacklist getSampledOpCode()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mSampledOpCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mAcceptableLeftDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-wide v0, p0, Lcom/android/internal/app/MessageSamplingConfig;->mExpirationTimeSinceBootMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    return-void
.end method
