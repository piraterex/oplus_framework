.class Landroid/view/ViewDebug$3;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$encoder:Landroid/view/ViewHierarchyEncoder;

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewHierarchyEncoder;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Landroid/view/ViewDebug$3;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    iput-object p2, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroid/view/ViewDebug$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 1191
    iget-object v0, p0, Landroid/view/ViewDebug$3;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    iget-object v1, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    const-string/jumbo v2, "window:left"

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1192
    iget-object v0, p0, Landroid/view/ViewDebug$3;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    iget-object v1, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    const-string/jumbo v2, "window:top"

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1193
    iget-object v0, p0, Landroid/view/ViewDebug$3;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$3;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    invoke-virtual {v0, v1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 1194
    iget-object v0, p0, Landroid/view/ViewDebug$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1195
    return-void
.end method
