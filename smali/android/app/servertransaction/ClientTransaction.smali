.class public Landroid/app/servertransaction/ClientTransaction;
.super Ljava/lang/Object;
.source "ClientTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/app/servertransaction/ObjectPoolItem;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ClientTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist mActivityCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mActivityToken:Landroid/os/IBinder;

.field private greylist-max-o mClient:Landroid/app/IApplicationThread;

.field private greylist-max-o mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 208
    new-instance v0, Landroid/app/servertransaction/ClientTransaction$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ClientTransaction$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 197
    .local v0, "readActivityToken":Z
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ActivityLifecycleItem;

    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 202
    .local v1, "readActivityCallbacks":Z
    if-eqz v1, :cond_1

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 206
    :cond_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ClientTransaction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;
    .locals 2
    .param p0, "client"    # Landroid/app/IApplicationThread;
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 146
    const-class v0, Landroid/app/servertransaction/ClientTransaction;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 147
    .local v0, "instance":Landroid/app/servertransaction/ClientTransaction;
    if-nez v0, :cond_0

    .line 148
    new-instance v1, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v1}, Landroid/app/servertransaction/ClientTransaction;-><init>()V

    move-object v0, v1

    .line 150
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    .line 151
    iput-object p1, v0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    .line 153
    return-object v0
.end method


# virtual methods
.method public greylist-max-o addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1
    .param p1, "activityCallback"    # Landroid/app/servertransaction/ClientTransactionItem;

    .line 72
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 251
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "ClientTransaction{"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "  callbacks=["

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 254
    .local v0, "size":I
    :goto_0
    if-lez v0, :cond_2

    .line 255
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 257
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  ]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 261
    :cond_2
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    :goto_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  stateRequest="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    if-eqz v2, :cond_3

    .line 264
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 263
    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 227
    return v0

    .line 229
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ClientTransaction;

    .line 233
    .local v2, "other":Landroid/app/servertransaction/ClientTransaction;
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 234
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 233
    :goto_0
    return v0

    .line 230
    .end local v2    # "other":Landroid/app/servertransaction/ClientTransaction;
    :cond_3
    :goto_1
    return v1
.end method

.method public greylist getActivityToken()Landroid/os/IBinder;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getClient()Landroid/app/IApplicationThread;
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public greylist getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 241
    const/16 v0, 0x11

    .line 242
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 243
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 244
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 245
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 246
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o preExecute(Landroid/app/ClientTransactionHandler;)V
    .locals 4
    .param p1, "clientTransactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 114
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 116
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 117
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1, v3}, Landroid/app/servertransaction/ClientTransactionItem;->preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Landroid/app/servertransaction/ActivityLifecycleItem;->preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V

    .line 123
    :cond_1
    return-void
.end method

.method public greylist-max-o recycle()V
    .locals 3

    .line 158
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 160
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 161
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v2}, Landroid/app/servertransaction/ClientTransactionItem;->recycle()V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 165
    .end local v0    # "size":I
    :cond_1
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Landroid/app/servertransaction/ActivityLifecycleItem;->recycle()V

    .line 167
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 169
    :cond_2
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    .line 170
    iput-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    .line 171
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 172
    return-void
.end method

.method public greylist-max-o schedule()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-interface {v0, p0}, Landroid/app/IApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 137
    return-void
.end method

.method public greylist-max-o setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .locals 0
    .param p1, "stateRequest"    # Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 105
    iput-object p1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 106
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 179
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 180
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 181
    .local v0, "writeActivityToken":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    if-eqz v0, :cond_1

    .line 183
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 185
    :cond_1
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 187
    .local v1, "writeActivityCallbacks":Z
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 188
    if-eqz v1, :cond_3

    .line 189
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 191
    :cond_3
    return-void
.end method
