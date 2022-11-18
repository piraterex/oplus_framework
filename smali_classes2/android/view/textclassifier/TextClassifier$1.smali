.class Landroid/view/textclassifier/TextClassifier$1;
.super Ljava/lang/Object;
.source "TextClassifier.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, "TextClassifier.NO_OP"

    return-object v0
.end method
