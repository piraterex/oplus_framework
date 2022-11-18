.class public abstract Landroid/service/wallpaper/IWallpaperEngine$Stub;
.super Landroid/os/Binder;
.source "IWallpaperEngine.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperEngine"

.field static final blacklist TRANSACTION_addLocalColorsAreas:I = 0xc

.field static final blacklist TRANSACTION_applyDimming:I = 0xe

.field static final greylist-max-o TRANSACTION_destroy:I = 0x8

.field static final greylist-max-o TRANSACTION_dispatchPointer:I = 0x5

.field static final greylist-max-o TRANSACTION_dispatchWallpaperCommand:I = 0x6

.field static final blacklist TRANSACTION_mirrorSurfaceControl:I = 0xd

.field static final blacklist TRANSACTION_removeLocalColorsAreas:I = 0xb

.field static final greylist-max-o TRANSACTION_requestWallpaperColors:I = 0x7

.field static final blacklist TRANSACTION_scalePreview:I = 0xa

.field static final greylist-max-o TRANSACTION_setDesiredSize:I = 0x1

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0x2

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x4

.field static final greylist-max-o TRANSACTION_setVisibility:I = 0x3

.field static final blacklist TRANSACTION_setZoomOut:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/service/wallpaper/IWallpaperEngine;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 145
    :pswitch_0
    const-string v0, "applyDimming"

    return-object v0

    .line 141
    :pswitch_1
    const-string/jumbo v0, "mirrorSurfaceControl"

    return-object v0

    .line 137
    :pswitch_2
    const-string v0, "addLocalColorsAreas"

    return-object v0

    .line 133
    :pswitch_3
    const-string/jumbo v0, "removeLocalColorsAreas"

    return-object v0

    .line 129
    :pswitch_4
    const-string/jumbo v0, "scalePreview"

    return-object v0

    .line 125
    :pswitch_5
    const-string/jumbo v0, "setZoomOut"

    return-object v0

    .line 121
    :pswitch_6
    const-string v0, "destroy"

    return-object v0

    .line 117
    :pswitch_7
    const-string/jumbo v0, "requestWallpaperColors"

    return-object v0

    .line 113
    :pswitch_8
    const-string v0, "dispatchWallpaperCommand"

    return-object v0

    .line 109
    :pswitch_9
    const-string v0, "dispatchPointer"

    return-object v0

    .line 105
    :pswitch_a
    const-string/jumbo v0, "setInAmbientMode"

    return-object v0

    .line 101
    :pswitch_b
    const-string/jumbo v0, "setVisibility"

    return-object v0

    .line 97
    :pswitch_c
    const-string/jumbo v0, "setDisplayPadding"

    return-object v0

    .line 93
    :pswitch_d
    const-string/jumbo v0, "setDesiredSize"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 509
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 156
    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.service.wallpaper.IWallpaperEngine"

    .line 161
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 162
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 172
    packed-switch v7, :pswitch_data_1

    .line 293
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 168
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return v11

    .line 286
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 287
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->applyDimming(F)V

    .line 289
    goto/16 :goto_0

    .line 278
    .end local v0    # "_arg0":F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->mirrorSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 279
    .local v0, "_result":Landroid/view/SurfaceControl;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 281
    goto/16 :goto_0

    .line 271
    .end local v0    # "_result":Landroid/view/SurfaceControl;
    :pswitch_3
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 272
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->addLocalColorsAreas(Ljava/util/List;)V

    .line 274
    goto/16 :goto_0

    .line 263
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    :pswitch_4
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 264
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->removeLocalColorsAreas(Ljava/util/List;)V

    .line 266
    goto/16 :goto_0

    .line 255
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    :pswitch_5
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 256
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->scalePreview(Landroid/graphics/Rect;)V

    .line 258
    goto/16 :goto_0

    .line 247
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 248
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setZoomOut(F)V

    .line 250
    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":F
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->destroy()V

    .line 242
    goto/16 :goto_0

    .line 236
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->requestWallpaperColors()V

    .line 237
    goto/16 :goto_0

    .line 221
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 223
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 225
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 227
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 229
    .local v15, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 230
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 232
    goto :goto_0

    .line 213
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_a
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 214
    .local v0, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchPointer(Landroid/view/MotionEvent;)V

    .line 216
    goto :goto_0

    .line 203
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 205
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 206
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setInAmbientMode(ZJ)V

    .line 208
    goto :goto_0

    .line 195
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":J
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 196
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setVisibility(Z)V

    .line 198
    goto :goto_0

    .line 187
    .end local v0    # "_arg0":Z
    :pswitch_d
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 188
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDisplayPadding(Landroid/graphics/Rect;)V

    .line 190
    goto :goto_0

    .line 177
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 180
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {v6, v0, v1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDesiredSize(II)V

    .line 182
    nop

    .line 296
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
