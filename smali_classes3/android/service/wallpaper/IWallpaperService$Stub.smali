.class public abstract Landroid/service/wallpaper/IWallpaperService$Stub;
.super Landroid/os/Binder;
.source "IWallpaperService.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperService"

.field static final greylist-max-o TRANSACTION_attach:I = 0x1

.field static final blacklist TRANSACTION_detach:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "android.service.wallpaper.IWallpaperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    const-string v0, "android.service.wallpaper.IWallpaperService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperService;

    if-eqz v1, :cond_1

    .line 41
    move-object v1, v0

    check-cast v1, Landroid/service/wallpaper/IWallpaperService;

    return-object v1

    .line 43
    :cond_1
    new-instance v1, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 52
    packed-switch p0, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 60
    :pswitch_0
    const-string v0, "detach"

    return-object v0

    .line 56
    :pswitch_1
    const-string v0, "attach"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 47
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 71
    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.service.wallpaper.IWallpaperService"

    .line 76
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 77
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 87
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 118
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 83
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v3

    .line 113
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/IWallpaperService$Stub;->detach()V

    .line 114
    goto :goto_0

    .line 92
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperConnection;

    move-result-object v5

    .line 94
    .local v5, "_arg0":Landroid/service/wallpaper/IWallpaperConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 96
    .local v15, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 98
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 100
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 102
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 104
    .local v19, "_arg5":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Landroid/graphics/Rect;

    .line 106
    .local v20, "_arg6":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 107
    .local v21, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    move-object/from16 v6, p0

    move-object v7, v5

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v13, v20

    move/from16 v14, v21

    invoke-virtual/range {v6 .. v14}, Landroid/service/wallpaper/IWallpaperService$Stub;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;I)V

    .line 109
    nop

    .line 121
    .end local v5    # "_arg0":Landroid/service/wallpaper/IWallpaperConnection;
    .end local v15    # "_arg1":Landroid/os/IBinder;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/graphics/Rect;
    .end local v21    # "_arg7":I
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
