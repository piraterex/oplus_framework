.class public final synthetic Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/content/FileSystemProvider;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/content/FileSystemProvider;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/content/FileSystemProvider;

    iput-object p2, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final whitelist onClose(Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/content/FileSystemProvider;

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/content/FileSystemProvider;->lambda$openDocument$1$com-android-internal-content-FileSystemProvider(Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V

    return-void
.end method
