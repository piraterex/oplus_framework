.class Landroid/widget/Editor$InputContentType;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputContentType"
.end annotation


# instance fields
.field greylist-max-o enterDown:Z

.field greylist-max-o extras:Landroid/os/Bundle;

.field greylist-max-o imeActionId:I

.field greylist-max-o imeActionLabel:Ljava/lang/CharSequence;

.field greylist-max-o imeHintLocales:Landroid/os/LocaleList;

.field greylist-max-o imeOptions:I

.field greylist-max-o onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field greylist privateImeOptions:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    .line 7291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7292
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    return-void
.end method
