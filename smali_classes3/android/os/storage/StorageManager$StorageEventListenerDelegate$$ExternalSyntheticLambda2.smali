.class public final synthetic Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iput-object p2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onStorageStateChanged$1$android-os-storage-StorageManager$StorageEventListenerDelegate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
