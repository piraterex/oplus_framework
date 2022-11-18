.class public abstract Landroid/printservice/IPrintService$Stub;
.super Landroid/os/Binder;
.source "IPrintService.java"

# interfaces
.implements Landroid/printservice/IPrintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintService"

.field static final greylist-max-o TRANSACTION_createPrinterDiscoverySession:I = 0x4

.field static final greylist-max-o TRANSACTION_destroyPrinterDiscoverySession:I = 0xb

.field static final greylist-max-o TRANSACTION_onPrintJobQueued:I = 0x3

.field static final greylist-max-o TRANSACTION_requestCancelPrintJob:I = 0x2

.field static final greylist-max-o TRANSACTION_requestCustomPrinterIcon:I = 0x9

.field static final greylist-max-o TRANSACTION_setClient:I = 0x1

.field static final greylist-max-o TRANSACTION_startPrinterDiscovery:I = 0x5

.field static final greylist-max-o TRANSACTION_startPrinterStateTracking:I = 0x8

.field static final greylist-max-o TRANSACTION_stopPrinterDiscovery:I = 0x6

.field static final greylist-max-o TRANSACTION_stopPrinterStateTracking:I = 0xa

.field static final greylist-max-o TRANSACTION_validatePrinters:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.printservice.IPrintService"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "android.printservice.IPrintService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/printservice/IPrintService;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/printservice/IPrintService;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Landroid/printservice/IPrintService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/printservice/IPrintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 133
    :pswitch_0
    const-string v0, "destroyPrinterDiscoverySession"

    return-object v0

    .line 129
    :pswitch_1
    const-string/jumbo v0, "stopPrinterStateTracking"

    return-object v0

    .line 125
    :pswitch_2
    const-string/jumbo v0, "requestCustomPrinterIcon"

    return-object v0

    .line 121
    :pswitch_3
    const-string/jumbo v0, "startPrinterStateTracking"

    return-object v0

    .line 117
    :pswitch_4
    const-string/jumbo v0, "validatePrinters"

    return-object v0

    .line 113
    :pswitch_5
    const-string/jumbo v0, "stopPrinterDiscovery"

    return-object v0

    .line 109
    :pswitch_6
    const-string/jumbo v0, "startPrinterDiscovery"

    return-object v0

    .line 105
    :pswitch_7
    const-string v0, "createPrinterDiscoverySession"

    return-object v0

    .line 101
    :pswitch_8
    const-string/jumbo v0, "onPrintJobQueued"

    return-object v0

    .line 97
    :pswitch_9
    const-string/jumbo v0, "requestCancelPrintJob"

    return-object v0

    .line 93
    :pswitch_a
    const-string/jumbo v0, "setClient"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 414
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 144
    invoke-static {p1}, Landroid/printservice/IPrintService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const-string v0, "android.printservice.IPrintService"

    .line 149
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 160
    packed-switch p1, :pswitch_data_1

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 156
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 238
    :pswitch_1
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->destroyPrinterDiscoverySession()V

    .line 239
    goto/16 :goto_0

    .line 231
    :pswitch_2
    sget-object v2, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 232
    .local v2, "_arg0":Landroid/print/PrinterId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 234
    goto/16 :goto_0

    .line 223
    .end local v2    # "_arg0":Landroid/print/PrinterId;
    :pswitch_3
    sget-object v2, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 224
    .restart local v2    # "_arg0":Landroid/print/PrinterId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 226
    goto :goto_0

    .line 215
    .end local v2    # "_arg0":Landroid/print/PrinterId;
    :pswitch_4
    sget-object v2, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 216
    .restart local v2    # "_arg0":Landroid/print/PrinterId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 218
    goto :goto_0

    .line 207
    .end local v2    # "_arg0":Landroid/print/PrinterId;
    :pswitch_5
    sget-object v2, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 208
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->validatePrinters(Ljava/util/List;)V

    .line 210
    goto :goto_0

    .line 201
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_6
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->stopPrinterDiscovery()V

    .line 202
    goto :goto_0

    .line 194
    :pswitch_7
    sget-object v2, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 195
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->startPrinterDiscovery(Ljava/util/List;)V

    .line 197
    goto :goto_0

    .line 188
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_8
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->createPrinterDiscoverySession()V

    .line 189
    goto :goto_0

    .line 181
    :pswitch_9
    sget-object v2, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobInfo;

    .line 182
    .local v2, "_arg0":Landroid/print/PrintJobInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    .line 184
    goto :goto_0

    .line 173
    .end local v2    # "_arg0":Landroid/print/PrintJobInfo;
    :pswitch_a
    sget-object v2, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobInfo;

    .line 174
    .restart local v2    # "_arg0":Landroid/print/PrintJobInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    .line 176
    goto :goto_0

    .line 165
    .end local v2    # "_arg0":Landroid/print/PrintJobInfo;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/printservice/IPrintServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;

    move-result-object v2

    .line 166
    .local v2, "_arg0":Landroid/printservice/IPrintServiceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->setClient(Landroid/printservice/IPrintServiceClient;)V

    .line 168
    nop

    .line 246
    .end local v2    # "_arg0":Landroid/printservice/IPrintServiceClient;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
