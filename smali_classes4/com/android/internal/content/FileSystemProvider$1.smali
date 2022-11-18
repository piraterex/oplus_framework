.class Lcom/android/internal/content/FileSystemProvider$1;
.super Ljava/lang/Object;
.source "FileSystemProvider.java"

# interfaces
.implements Ljava/nio/file/FileVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/content/FileSystemProvider;->getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/FileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/content/FileSystemProvider;

.field final synthetic blacklist val$treeCount:Landroid/system/Int64Ref;

.field final synthetic blacklist val$treeSize:Landroid/system/Int64Ref;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/content/FileSystemProvider;Landroid/system/Int64Ref;Landroid/system/Int64Ref;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/content/FileSystemProvider;

    .line 163
    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$1;->this$0:Lcom/android/internal/content/FileSystemProvider;

    iput-object p2, p0, Lcom/android/internal/content/FileSystemProvider$1;->val$treeCount:Landroid/system/Int64Ref;

    iput-object p3, p0, Lcom/android/internal/content/FileSystemProvider$1;->val$treeSize:Landroid/system/Int64Ref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/content/FileSystemProvider$1;->postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "exc"    # Ljava/io/IOException;

    .line 183
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/content/FileSystemProvider$1;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 166
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/content/FileSystemProvider$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 5
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 171
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$1;->val$treeCount:Landroid/system/Int64Ref;

    iget-wide v1, v0, Landroid/system/Int64Ref;->value:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/system/Int64Ref;->value:J

    .line 172
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$1;->val$treeSize:Landroid/system/Int64Ref;

    iget-wide v1, v0, Landroid/system/Int64Ref;->value:J

    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/system/Int64Ref;->value:J

    .line 173
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/content/FileSystemProvider$1;->visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist visitFileFailed(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "exc"    # Ljava/io/IOException;

    .line 178
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method
