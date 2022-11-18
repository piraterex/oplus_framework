.class public interface abstract Landroid/widget/IEditorExt;
.super Ljava/lang/Object;
.source "IEditorExt.java"


# virtual methods
.method public blacklist getExtraCursorWidth(Landroid/widget/Editor;)I
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtraLeftOffset(Landroid/widget/Editor;)I
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOplusTextThumbnailBuilder(Landroid/view/View;Ljava/lang/String;)Landroid/view/View$DragShadowBuilder;
    .locals 1
    .param p1, "textview"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleCursorControllersEnabled(ZZ)[Z
    .locals 1
    .param p1, "insertionControllerEnabled"    # Z
    .param p2, "selectionControllerEnabled"    # Z

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Z

    return-object v0
.end method

.method public blacklist handleKeyCodeDelDown(Landroid/widget/Editor;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 95
    return-void
.end method

.method public blacklist handleKeyCodeDelUp(Landroid/widget/Editor;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 99
    return-void
.end method

.method public blacklist hookFireIntent(Landroid/widget/TextView;Landroid/content/Intent;)V
    .locals 0
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public blacklist isOplusReorderActionMenu(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist layout(IILjava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "shadowViewWidth"    # I
    .param p2, "shadowViewHeight"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "shadowView"    # Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method public blacklist needAllSelected()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needHook()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onInitializeReorderActionMenu(Landroid/view/Menu;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 106
    return-void
.end method

.method public blacklist refreshCursorRenderTime(Landroid/widget/Editor;)Z
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist selectAllText(Landroid/widget/TextView;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBackground(Landroid/widget/ListView;Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0
    .param p1, "suggestionListView"    # Landroid/widget/ListView;
    .param p2, "colorDrawable"    # Landroid/graphics/drawable/ColorDrawable;

    .line 66
    return-void
.end method

.method public blacklist setEditorUtils(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 32
    return-void
.end method

.method public blacklist setFocused(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 47
    return-void
.end method

.method public blacklist setLastOffset(I)V
    .locals 0
    .param p1, "value"    # I

    .line 54
    return-void
.end method

.method public blacklist setSearchMenuItem(ILandroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/pm/ResolveInfo;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p5, "menu"    # Landroid/view/Menu;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startInsertionActionMode(Landroid/view/ActionMode;ILandroid/widget/Editor;)V
    .locals 0
    .param p1, "textActionMode"    # Landroid/view/ActionMode;
    .param p2, "offset"    # I
    .param p3, "editor"    # Landroid/widget/Editor;

    .line 60
    return-void
.end method

.method public blacklist toHandleItemClicked(ILandroid/widget/TextView;Landroid/widget/Editor;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "editor"    # Landroid/widget/Editor;

    .line 75
    return-void
.end method

.method public blacklist updateSelectAllItem(Landroid/view/Menu;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 69
    return-void
.end method
