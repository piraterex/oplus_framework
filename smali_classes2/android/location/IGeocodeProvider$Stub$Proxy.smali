.class Landroid/location/IGeocodeProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 144
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 4
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .param p7, "listener"    # Landroid/location/IGeocodeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.IGeocodeProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 159
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 160
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 162
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 163
    iget-object v1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v1
.end method

.method public blacklist getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 16
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .param p12, "listener"    # Landroid/location/IGeocodeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 173
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.location.IGeocodeProvider"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 176
    move-wide/from16 v5, p4

    :try_start_1
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 177
    move-wide/from16 v7, p6

    :try_start_2
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 178
    move-wide/from16 v9, p8

    :try_start_3
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 179
    move/from16 v11, p10

    :try_start_4
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 180
    const/4 v0, 0x0

    move-object/from16 v12, p11

    :try_start_5
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 181
    move-object/from16 v13, p12

    :try_start_6
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 182
    move-object/from16 v14, p0

    :try_start_7
    iget-object v0, v14, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_1

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_0

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v5, p4

    :goto_0
    move-wide/from16 v7, p6

    :goto_1
    move-wide/from16 v9, p8

    :goto_2
    move/from16 v11, p10

    :goto_3
    move-object/from16 v12, p11

    :goto_4
    move-object/from16 v13, p12

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 151
    const-string v0, "android.location.IGeocodeProvider"

    return-object v0
.end method
