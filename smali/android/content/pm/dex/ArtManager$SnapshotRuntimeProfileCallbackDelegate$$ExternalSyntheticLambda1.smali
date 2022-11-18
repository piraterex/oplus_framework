.class public final synthetic Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

.field public final synthetic blacklist f$1:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

    iput-object p2, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate$$ExternalSyntheticLambda1;->f$1:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;

    iget-object v1, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate$$ExternalSyntheticLambda1;->f$1:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->lambda$onSuccess$0$android-content-pm-dex-ArtManager$SnapshotRuntimeProfileCallbackDelegate(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
