.class public Landroid/media/session/ParcelableListBinder;
.super Landroid/os/Binder;
.source "ParcelableListBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# static fields
.field private static final blacklist END_OF_PARCEL:I = 0x0

.field private static final blacklist ITEM_CONTINUED:I = 0x1

.field private static final blacklist SUGGESTED_MAX_IPC_SIZE:I


# instance fields
.field private blacklist mConsumed:Z

.field private final blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private blacklist mCount:I

.field private final blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Landroid/media/session/ParcelableListBinder;->SUGGESTED_MAX_IPC_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroid/media/session/ParcelableListBinder;, "Landroid/media/session/ParcelableListBinder<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/ParcelableListBinder;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    .line 67
    iput-object p1, p0, Landroid/media/session/ParcelableListBinder;->mConsumer:Ljava/util/function/Consumer;

    .line 68
    return-void
.end method

.method public static blacklist send(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 8
    .param p0, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 111
    .local v0, "count":I
    const/4 v1, 0x0

    .line 113
    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 114
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 115
    .local v3, "reply":Landroid/os/Parcel;
    if-nez v1, :cond_0

    .line 116
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    :cond_0
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v0, :cond_1

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    sget v7, Landroid/media/session/ParcelableListBinder;->SUGGESTED_MAX_IPC_SIZE:I

    if-ge v6, v7, :cond_1

    .line 119
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_1
    if-ge v1, v0, :cond_2

    .line 124
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    :cond_2
    invoke-interface {p0, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 127
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 129
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    if-lt v1, v0, :cond_3

    .line 130
    return-void

    .line 129
    :cond_3
    goto :goto_0
.end method


# virtual methods
.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    .local p0, "this":Landroid/media/session/ParcelableListBinder;, "Landroid/media/session/ParcelableListBinder<TT;>;"
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 77
    :cond_0
    iget-object v1, p0, Landroid/media/session/ParcelableListBinder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-boolean v2, p0, Landroid/media/session/ParcelableListBinder;->mConsumed:Z

    if-eqz v2, :cond_1

    .line 79
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 81
    :cond_1
    iget-object v2, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 82
    .local v2, "i":I
    if-nez v2, :cond_2

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    .line 85
    :cond_2
    :goto_0
    iget v3, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    if-ge v2, v3, :cond_3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    iget-object v3, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_3
    iget v3, p0, Landroid/media/session/ParcelableListBinder;->mCount:I

    if-lt v2, v3, :cond_4

    .line 90
    iget-object v3, p0, Landroid/media/session/ParcelableListBinder;->mList:Ljava/util/List;

    .line 91
    .local v3, "listToBeConsumed":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-boolean v0, p0, Landroid/media/session/ParcelableListBinder;->mConsumed:Z

    goto :goto_1

    .line 93
    .end local v3    # "listToBeConsumed":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    const/4 v3, 0x0

    .line 95
    .end local v2    # "i":I
    .restart local v3    # "listToBeConsumed":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v3, :cond_5

    .line 97
    iget-object v1, p0, Landroid/media/session/ParcelableListBinder;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 99
    :cond_5
    return v0

    .line 95
    .end local v3    # "listToBeConsumed":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
