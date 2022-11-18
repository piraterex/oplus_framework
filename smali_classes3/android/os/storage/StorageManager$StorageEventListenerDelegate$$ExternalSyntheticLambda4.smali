.class public final synthetic Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

.field public final synthetic blacklist f$1:Landroid/os/storage/VolumeRecord;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iput-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;->f$1:Landroid/os/storage/VolumeRecord;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda4;->f$1:Landroid/os/storage/VolumeRecord;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onVolumeRecordChanged$3$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method
