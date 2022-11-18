.class Landroid/widget/TextView$TextViewWrapper;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/ITextViewWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextView;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 14434
    iput-object p1, p0, Landroid/widget/TextView$TextViewWrapper;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/TextView;Landroid/widget/TextView$TextViewWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView$TextViewWrapper;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public blacklist getEditor()Landroid/widget/Editor;
    .locals 1

    .line 14436
    iget-object v0, p0, Landroid/widget/TextView$TextViewWrapper;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$fgetmEditor(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 14440
    iget-object v0, p0, Landroid/widget/TextView$TextViewWrapper;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$fgetmText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
