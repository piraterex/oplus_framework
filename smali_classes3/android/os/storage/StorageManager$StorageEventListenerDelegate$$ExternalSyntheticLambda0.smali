.class public final synthetic Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

.field public final synthetic blacklist f$1:Landroid/os/storage/DiskInfo;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iput-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/DiskInfo;

    iput p3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/os/storage/DiskInfo;

    iget v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onDiskScanned$5$android-os-storage-StorageManager$StorageEventListenerDelegate(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method
