.class public Landroid/content/ClipDescription;
.super Ljava/lang/Object;
.source "ClipDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipDescription$ClassificationStatus;
    }
.end annotation


# static fields
.field public static final whitelist CLASSIFICATION_COMPLETE:I = 0x3

.field public static final whitelist CLASSIFICATION_NOT_COMPLETE:I = 0x1

.field public static final whitelist CLASSIFICATION_NOT_PERFORMED:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ClipDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_ACTIVITY_OPTIONS:Ljava/lang/String; = "android.intent.extra.ACTIVITY_OPTIONS"

.field public static final whitelist EXTRA_IS_SENSITIVE:Ljava/lang/String; = "android.content.extra.IS_SENSITIVE"

.field public static final blacklist EXTRA_LOGGING_INSTANCE_ID:Ljava/lang/String; = "android.intent.extra.LOGGING_INSTANCE_ID"

.field public static final blacklist EXTRA_PENDING_INTENT:Ljava/lang/String; = "android.intent.extra.PENDING_INTENT"

.field public static final blacklist MIMETYPE_APPLICATION_ACTIVITY:Ljava/lang/String; = "application/vnd.android.activity"

.field public static final blacklist MIMETYPE_APPLICATION_SHORTCUT:Ljava/lang/String; = "application/vnd.android.shortcut"

.field public static final blacklist MIMETYPE_APPLICATION_TASK:Ljava/lang/String; = "application/vnd.android.task"

.field public static final whitelist MIMETYPE_TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final whitelist MIMETYPE_TEXT_INTENT:Ljava/lang/String; = "text/vnd.android.intent"

.field public static final whitelist MIMETYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final whitelist MIMETYPE_TEXT_URILIST:Ljava/lang/String; = "text/uri-list"

.field public static final whitelist MIMETYPE_UNKNOWN:Ljava/lang/String; = "application/octet-stream"


# instance fields
.field private blacklist mClassificationStatus:I

.field private final blacklist mEntityConfidence:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExtras:Landroid/os/PersistableBundle;

.field private blacklist mIsStyledText:Z

.field final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTimeStamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 604
    new-instance v0, Landroid/content/ClipDescription$1;

    invoke-direct {v0}, Landroid/content/ClipDescription$1;-><init>()V

    sput-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ClipDescription;)V
    .locals 2
    .param p1, "o"    # Landroid/content/ClipDescription;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 189
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 209
    iget-object v0, p1, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    .line 211
    iget-wide v0, p1, Landroid/content/ClipDescription;->mTimeStamp:J

    iput-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    .line 212
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 189
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 595
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ClipDescription;->mIsStyledText:Z

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ClipDescription;->readBundleToConfidences(Landroid/os/Bundle;)V

    .line 602
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "mimeTypes"    # [Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 189
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 198
    if-eqz p2, :cond_0

    .line 201
    iput-object p1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    .line 203
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mimeTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "concreteType"    # Ljava/lang/String;
    .param p1, "desiredType"    # Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 222
    .local v0, "typeLength":I
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v2, "*/*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    return v1

    .line 226
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 227
    .local v2, "slashpos":I
    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 228
    add-int/lit8 v4, v2, 0x2

    if-ne v0, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_1

    .line 229
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3, p0, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    return v1

    .line 232
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    return v1

    .line 237
    :cond_2
    return v3
.end method

.method private blacklist confidencesToBundle()Landroid/os/Bundle;
    .locals 5

    .line 580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 581
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 582
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 583
    iget-object v3, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private blacklist readBundleToConfidences(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 589
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 590
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 592
    :cond_0
    return-void
.end method


# virtual methods
.method greylist-max-o addMimeTypes([Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 351
    aget-object v1, p1, v0

    .line 352
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 543
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 545
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 546
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 547
    const-wide v4, 0x20900000001L

    iget-object v6, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 550
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 551
    const-wide v4, 0x10900000002L

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 553
    :cond_1
    iget-object v3, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v3, :cond_2

    .line 554
    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 556
    :cond_2
    iget-wide v3, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    .line 557
    const-wide v5, 0x10300000004L

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 560
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 561
    return-void
.end method

.method public whitelist filterMimeTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 316
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 317
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    if-nez v0, :cond_0

    .line 319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 321
    :cond_0
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "i":I
    :cond_2
    if-nez v0, :cond_3

    .line 325
    const/4 v2, 0x0

    return-object v2

    .line 327
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 328
    .local v2, "rawArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 329
    return-object v2
.end method

.method public whitelist getClassificationStatus()I
    .locals 1

    .line 458
    iget v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    return v0
.end method

.method public whitelist getConfidenceScore(Ljava/lang/String;)F
    .locals 2
    .param p1, "entity"    # Ljava/lang/String;

    .line 443
    iget v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Classification not complete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 367
    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getMimeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 343
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMimeTypeCount()I
    .locals 1

    .line 336
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    .line 260
    iget-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    return-wide v0
.end method

.method public whitelist hasMimeType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 278
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 279
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 280
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    const/4 v2, 0x1

    return v2

    .line 279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist hasMimeType([Ljava/lang/String;)Z
    .locals 5
    .param p1, "targetMimeTypes"    # [Ljava/lang/String;

    .line 297
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 298
    .local v3, "targetMimeType":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    const/4 v0, 0x1

    return v0

    .line 297
    .end local v3    # "targetMimeType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_1
    return v1
.end method

.method public whitelist isStyledText()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Landroid/content/ClipDescription;->mIsStyledText:Z

    return v0
.end method

.method public blacklist setClassificationStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 421
    iput p1, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 422
    return-void
.end method

.method public blacklist setConfidenceScores(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p1, "confidences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    iget-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 466
    iget-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 467
    const/4 v0, 0x3

    iput v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 468
    return-void
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 376
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    .line 377
    return-void
.end method

.method blacklist setIsStyledText(Z)V
    .locals 0
    .param p1, "isStyledText"    # Z

    .line 412
    iput-boolean p1, p0, Landroid/content/ClipDescription;->mIsStyledText:Z

    .line 413
    return-void
.end method

.method public greylist-max-o setTimestamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 249
    iput-wide p1, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    .line 250
    return-void
.end method

.method public blacklist toShortString(Ljava/lang/StringBuilder;Z)Z
    .locals 7
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "redactContent"    # Z

    .line 487
    invoke-virtual {p0, p1}, Landroid/content/ClipDescription;->toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 488
    .local v0, "first":Z
    iget-object v2, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    const/16 v3, 0x29

    const/16 v4, 0x20

    if-eqz v2, :cond_2

    .line 489
    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    :cond_0
    const/4 v0, 0x0

    .line 493
    if-eqz p2, :cond_1

    .line 494
    const-string v2, "hasLabel("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 496
    :cond_1
    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 499
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_6

    .line 500
    if-nez v0, :cond_3

    .line 501
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    :cond_3
    const/4 v0, 0x0

    .line 504
    if-eqz p2, :cond_5

    .line 505
    iget-object v2, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isParcelled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 507
    const-string v2, "hasExtras"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 509
    :cond_4
    const-string v2, "hasExtras("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 512
    :cond_5
    iget-object v2, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_6
    :goto_1
    iget-wide v2, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-lez v2, :cond_8

    .line 516
    if-nez v0, :cond_7

    .line 517
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    :cond_7
    const/4 v0, 0x0

    .line 520
    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    iget-wide v2, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const/16 v2, 0x3e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    :cond_8
    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public greylist-max-o toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z
    .locals 4
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .line 529
    const/4 v0, 0x1

    .line 530
    .local v0, "first":Z
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 531
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 532
    if-nez v0, :cond_0

    .line 533
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    :cond_0
    const/4 v0, 0x0

    .line 536
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v2    # "i":I
    :cond_1
    xor-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 474
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipDescription { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;Z)Z

    .line 476
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()V
    .locals 5

    .line 381
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 384
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 385
    .local v0, "size":I
    if-lez v0, :cond_2

    .line 388
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 389
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mime type at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 386
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "must have at least 1 mime type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    .end local v0    # "size":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null mime types"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 570
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 571
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 572
    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 573
    iget-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 574
    iget-boolean v0, p0, Landroid/content/ClipDescription;->mIsStyledText:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 575
    iget v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    invoke-direct {p0}, Landroid/content/ClipDescription;->confidencesToBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 577
    return-void
.end method
