.class Lcom/android/internal/graphics/fonts/IFontManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFontManager.java"

# interfaces
.implements Lcom/android/internal/graphics/fonts/IFontManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/fonts/IFontManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/internal/graphics/fonts/IFontManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 127
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/internal/graphics/fonts/IFontManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getFontConfig()Landroid/text/FontConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.graphics.fonts.IFontManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/android/internal/graphics/fonts/IFontManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 144
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 145
    sget-object v3, Landroid/text/FontConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 148
    .local v2, "_result":Landroid/text/FontConfig;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    nop

    .line 151
    return-object v2

    .line 148
    .end local v2    # "_result":Landroid/text/FontConfig;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, "com.android.internal.graphics.fonts.IFontManager"

    return-object v0
.end method

.method public blacklist updateFontFamily(Ljava/util/List;I)I
    .locals 5
    .param p2, "baseVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    .local p1, "request":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.graphics.fonts.IFontManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v2, p0, Lcom/android/internal/graphics/fonts/IFontManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 163
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 167
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    nop

    .line 170
    return v2

    .line 167
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw v2
.end method
