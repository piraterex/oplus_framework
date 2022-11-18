.class Lcom/android/internal/widget/TextViewInputDisabler$1;
.super Ljava/lang/Object;
.source "TextViewInputDisabler.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/TextViewInputDisabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/TextViewInputDisabler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/TextViewInputDisabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/TextViewInputDisabler;

    .line 33
    iput-object p1, p0, Lcom/android/internal/widget/TextViewInputDisabler$1;->this$0:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 37
    const-string v0, ""

    return-object v0
.end method
