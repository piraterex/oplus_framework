.class public final synthetic Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Landroid/os/ParcelFileDescriptor;

.field public final synthetic blacklist f$5:Ljava/lang/String;

.field public final synthetic blacklist f$6:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iput-object p2, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput p4, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$3:I

    iput-object p5, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$4:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$5:Ljava/lang/String;

    iput-object p7, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$6:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 7

    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iget-object v1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget v3, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$3:I

    iget-object v4, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$4:Landroid/os/ParcelFileDescriptor;

    iget-object v5, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$5:Ljava/lang/String;

    iget-object v6, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda4;->f$6:Landroid/os/RemoteCallback;

    invoke-virtual/range {v0 .. v6}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->lambda$startSession$0$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method
