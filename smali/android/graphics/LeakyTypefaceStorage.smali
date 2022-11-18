.class public Landroid/graphics/LeakyTypefaceStorage;
.super Ljava/lang/Object;
.source "LeakyTypefaceStorage.java"


# static fields
.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static final greylist-max-o sStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sTypefaceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/Typeface;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/LeakyTypefaceStorage;->sLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/graphics/LeakyTypefaceStorage;->sTypefaceMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "pid":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, "typefaceId":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 80
    const/4 v2, 0x0

    return-object v2

    .line 82
    :cond_0
    sget-object v2, Landroid/graphics/LeakyTypefaceStorage;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_0
    sget-object v3, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    monitor-exit v2

    return-object v3

    .line 84
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static greylist-max-o writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V
    .locals 5
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    sget-object v0, Landroid/graphics/LeakyTypefaceStorage;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Landroid/graphics/LeakyTypefaceStorage;->sTypefaceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 57
    .local v2, "i":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "id":I
    goto :goto_0

    .line 60
    .end local v1    # "id":I
    :cond_0
    sget-object v3, Landroid/graphics/LeakyTypefaceStorage;->sStorage:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 61
    .local v4, "id":I
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    .line 64
    .end local v4    # "id":I
    .restart local v1    # "id":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .end local v1    # "id":I
    .end local v2    # "i":Ljava/lang/Integer;
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
