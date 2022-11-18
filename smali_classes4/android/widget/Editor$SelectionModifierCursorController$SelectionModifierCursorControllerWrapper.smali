.class Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SelectionModifierCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorControllerWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$SelectionModifierCursorController;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    .line 7109
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper;->this$1:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor$SelectionModifierCursorController;Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper;-><init>(Landroid/widget/Editor$SelectionModifierCursorController;)V

    return-void
.end method


# virtual methods
.method public blacklist setMaxTouchOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 7114
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper;->this$1:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-static {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fputmMaxTouchOffset(Landroid/widget/Editor$SelectionModifierCursorController;I)V

    .line 7115
    return-void
.end method

.method public blacklist setMinTouchOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 7111
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper;->this$1:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-static {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fputmMinTouchOffset(Landroid/widget/Editor$SelectionModifierCursorController;I)V

    .line 7112
    return-void
.end method
