.class public final synthetic Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Landroid/os/storage/StorageVolume;

.field public final synthetic blacklist f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iput-object p2, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/os/storage/StorageVolume;

    iput-object p4, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iget-object v1, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/os/storage/StorageVolume;

    iget-object v3, p0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper$$ExternalSyntheticLambda1;->f$3:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->lambda$notifyVolumeStateChanged$1$android-service-storage-ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V

    return-void
.end method
