.class Landroid/widget/Editor$InsertionPointCursorController$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$InsertionPointCursorController;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$InsertionPointCursorController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$InsertionPointCursorController;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$InsertionPointCursorController;

    .line 6598
    iput-object p1, p0, Landroid/widget/Editor$InsertionPointCursorController$1;->this$1:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 6601
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController$1;->this$1:Landroid/widget/Editor$InsertionPointCursorController;

    iget-object v0, v0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 6602
    return-void
.end method
