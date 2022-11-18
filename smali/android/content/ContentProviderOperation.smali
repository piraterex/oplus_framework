.class public Landroid/content/ContentProviderOperation;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderOperation$Builder;,
        Landroid/content/ContentProviderOperation$BackReference;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentProviderOperation"

.field public static final greylist-max-o TYPE_ASSERT:I = 0x4

.field public static final blacklist TYPE_CALL:I = 0x5

.field public static final greylist TYPE_DELETE:I = 0x3

.field public static final greylist TYPE_INSERT:I = 0x1

.field public static final greylist TYPE_UPDATE:I = 0x2


# instance fields
.field private final blacklist mArg:Ljava/lang/String;

.field private final blacklist mExceptionAllowed:Z

.field private final greylist-max-o mExpectedCount:Ljava/lang/Integer;

.field private final blacklist mExtras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMethod:Ljava/lang/String;

.field private final greylist mSelection:Ljava/lang/String;

.field private final blacklist mSelectionArgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mType:I

.field private final greylist mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mYieldAllowed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 568
    new-instance v0, Landroid/content/ContentProviderOperation$1;

    invoke-direct {v0}, Landroid/content/ContentProviderOperation$1;-><init>()V

    sput-object v0, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/content/ContentProviderOperation$Builder;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmType(Landroid/content/ContentProviderOperation$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    .line 79
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmUri(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    .line 80
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmMethod(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmArg(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmValues(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    .line 83
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExtras(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    .line 84
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmSelection(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmSelectionArgs(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    .line 86
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExpectedCount(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    .line 87
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmYieldAllowed(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    .line 88
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->-$$Nest$fgetmExceptionAllowed(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ContentProviderOperation;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cpo"    # Landroid/content/ContentProviderOperation;
    .param p2, "withUri"    # Landroid/net/Uri;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iget v0, p1, Landroid/content/ContentProviderOperation;->mType:I

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    .line 120
    iput-object p2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    .line 121
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    .line 122
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    .line 123
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    .line 124
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    .line 125
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    .line 127
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    .line 128
    iget-boolean v0, p1, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    .line 129
    iget-boolean v0, p1, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    .line 130
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    .line 93
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "valuesSize":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 98
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    .line 99
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V

    goto :goto_2

    .line 101
    :cond_2
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    .line 103
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, "extrasSize":I
    if-eq v3, v2, :cond_3

    .line 105
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    .line 106
    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V

    goto :goto_3

    .line 108
    :cond_3
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    .line 110
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    .line 111
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    iput-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v4

    :goto_5
    iput-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v2, v4

    :goto_6
    iput-boolean v2, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/ContentProviderOperation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .locals 11
    .param p1, "provider"    # Landroid/content/ContentProvider;
    .param p2, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p3, "numBackRefs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 363
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveExtrasBackReferences([Landroid/content/ContentProviderResult;I)Landroid/os/Bundle;

    move-result-object v1

    .line 364
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 365
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    move-object v1, v2

    .line 366
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    const-string v3, "android:query-arg-sql-selection"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_1
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    .line 369
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_1
    move-object v1, v2

    .line 370
    nop

    .line 371
    invoke-virtual {p0, p2, p3}, Landroid/content/ContentProviderOperation;->resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;

    move-result-object v2

    .line 370
    const-string v3, "android:query-arg-sql-selection-args"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 374
    :cond_3
    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 375
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v2

    .line 376
    .local v2, "newUri":Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 377
    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v2}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;)V

    return-object v3

    .line 379
    :cond_4
    new-instance v3, Landroid/content/OperationApplicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned no result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 382
    .end local v2    # "newUri":Landroid/net/Uri;
    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 383
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 384
    .local v2, "res":Landroid/os/Bundle;
    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v2}, Landroid/content/ContentProviderResult;-><init>(Landroid/os/Bundle;)V

    return-object v3

    .line 388
    .end local v2    # "res":Landroid/os/Bundle;
    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 389
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v2

    .local v2, "numRows":I
    goto/16 :goto_5

    .line 390
    .end local v2    # "numRows":I
    :cond_7
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 391
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v2

    .restart local v2    # "numRows":I
    goto/16 :goto_5

    .line 392
    .end local v2    # "numRows":I
    :cond_8
    const/4 v3, 0x4

    if-ne v2, v3, :cond_10

    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, "projection":[Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 397
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v3, "projectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 399
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_2

    .line 401
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [Ljava/lang/String;

    .line 403
    .end local v3    # "projectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 405
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 406
    .local v4, "numRows":I
    if-eqz v2, :cond_d

    .line 407
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 408
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v6, v2

    if-ge v5, v6, :cond_c

    .line 409
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "cursorValue":Ljava/lang/String;
    aget-object v7, v2, v5

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, "expectedValue":Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 408
    .end local v6    # "cursorValue":Ljava/lang/String;
    .end local v7    # "expectedValue":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 413
    .restart local v6    # "cursorValue":Ljava/lang/String;
    .restart local v7    # "expectedValue":Ljava/lang/String;
    :cond_b
    new-instance v8, Landroid/content/OperationApplicationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " when expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for column "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/content/ContentProviderOperation;
    .end local p1    # "provider":Landroid/content/ContentProvider;
    .end local p2    # "backRefs":[Landroid/content/ContentProviderResult;
    .end local p3    # "numBackRefs":I
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .end local v5    # "i":I
    .end local v6    # "cursorValue":Ljava/lang/String;
    .end local v7    # "expectedValue":Ljava/lang/String;
    .restart local v0    # "values":Landroid/content/ContentValues;
    .restart local v1    # "extras":Landroid/os/Bundle;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/content/ContentProviderOperation;
    .restart local p1    # "provider":Landroid/content/ContentProvider;
    .restart local p2    # "backRefs":[Landroid/content/ContentProviderResult;
    .restart local p3    # "numBackRefs":I
    :cond_c
    goto :goto_3

    .line 421
    :cond_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 422
    nop

    .line 423
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    move v2, v4

    .line 427
    .end local v4    # "numRows":I
    .local v2, "numRows":I
    :goto_5
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_e

    goto :goto_6

    .line 428
    :cond_e
    new-instance v3, Landroid/content/OperationApplicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows but actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :cond_f
    :goto_6
    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v2}, Landroid/content/ContentProviderResult;-><init>(I)V

    return-object v3

    .line 421
    .local v2, "projection":[Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 422
    throw v4

    .line 424
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_10
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad type, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 213
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static whitelist newCall(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 224
    new-instance v6, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v6
.end method

.method public static whitelist newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 204
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static whitelist newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 184
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static whitelist newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 194
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V

    return-object v0
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 523
    packed-switch p0, :pswitch_data_0

    .line 529
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :pswitch_0
    const-string v0, "call"

    return-object v0

    .line 527
    :pswitch_1
    const-string v0, "assert"

    return-object v0

    .line 526
    :pswitch_2
    const-string v0, "delete"

    return-object v0

    .line 525
    :pswitch_3
    const-string/jumbo v0, "update"

    return-object v0

    .line 524
    :pswitch_4
    const-string v0, "insert"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .locals 2
    .param p1, "provider"    # Landroid/content/ContentProvider;
    .param p2, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p3, "numBackRefs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 345
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    if-eqz v0, :cond_0

    .line 347
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProviderOperation;->applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/ContentProviderResult;

    invoke-direct {v1, v0}, Landroid/content/ContentProviderResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProviderOperation;->applyInternal(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getType()I
    .locals 1

    .line 256
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    return v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isAssertQuery()Z
    .locals 2

    .line 295
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isCall()Z
    .locals 2

    .line 305
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isDelete()Z
    .locals 2

    .line 276
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isExceptionAllowed()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    return v0
.end method

.method public whitelist isInsert()Z
    .locals 2

    .line 266
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isReadOperation()Z
    .locals 2

    .line 325
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isUpdate()Z
    .locals 2

    .line 286
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isWriteOperation()Z
    .locals 3

    .line 316
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist isYieldAllowed()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    return v0
.end method

.method public whitelist resolveExtrasBackReferences([Landroid/content/ContentProviderResult;I)Landroid/os/Bundle;
    .locals 5
    .param p1, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p2, "numBackRefs"    # I

    .line 471
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 474
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 476
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v3, :cond_0

    .line 477
    move-object v3, v2

    check-cast v3, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "resolved":Ljava/lang/Object;
    goto :goto_1

    .line 479
    .end local v3    # "resolved":Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    .line 481
    .restart local v3    # "resolved":Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "resolved":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 485
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;
    .locals 7
    .param p1, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p2, "numBackRefs"    # I

    .line 498
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 499
    const/4 v0, -0x1

    .line 500
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 501
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 505
    .local v1, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 506
    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 508
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v4, :cond_1

    .line 509
    move-object v4, v3

    check-cast v4, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v4

    .local v4, "resolved":Ljava/lang/Object;
    goto :goto_2

    .line 511
    .end local v4    # "resolved":Ljava/lang/Object;
    :cond_1
    move-object v4, v3

    .line 513
    .restart local v4    # "resolved":Ljava/lang/Object;
    :goto_2
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 505
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "resolved":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 515
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 517
    .end local v0    # "max":I
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;
    .locals 5
    .param p1, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p2, "numBackRefs"    # I

    .line 444
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 445
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 447
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 449
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v3, :cond_0

    .line 450
    move-object v3, v2

    check-cast v3, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;->resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "resolved":Ljava/lang/Object;
    goto :goto_1

    .line 452
    .end local v3    # "resolved":Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    .line 454
    .restart local v3    # "resolved":Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "resolved":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 458
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentProviderOperation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 538
    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    .line 541
    const-string/jumbo v1, "values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    :cond_1
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 544
    const-string/jumbo v1, "selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    :cond_2
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 547
    const-string/jumbo v1, "selectionArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    :cond_3
    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 550
    const-string v1, "expectedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    :cond_4
    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    if-eqz v1, :cond_5

    .line 553
    const-string/jumbo v1, "yieldAllowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_5
    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    if-eqz v1, :cond_6

    .line 556
    const-string v1, "exceptionAllowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 136
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mArg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :goto_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArrayMap(Landroid/util/ArrayMap;)V

    goto :goto_2

    .line 152
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    :goto_2
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArrayMap(Landroid/util/ArrayMap;)V

    goto :goto_3

    .line 158
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    :goto_3
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 161
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_4

    .line 164
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :goto_4
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 167
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 168
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 171
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    :goto_5
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mExceptionAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
