.class public final Landroid/view/inputmethod/InputConnectionCallProto$GetTextBeforeCursor;
.super Ljava/lang/Object;
.source "InputConnectionCallProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputConnectionCallProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GetTextBeforeCursor"
.end annotation


# static fields
.field public static final blacklist FLAGS:J = 0x10500000002L

.field public static final blacklist LENGTH:J = 0x10500000001L

.field public static final blacklist RESULT:J = 0x10900000003L


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputConnectionCallProto;


# direct methods
.method public constructor blacklist <init>(Landroid/view/inputmethod/InputConnectionCallProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/inputmethod/InputConnectionCallProto;

    .line 11
    iput-object p1, p0, Landroid/view/inputmethod/InputConnectionCallProto$GetTextBeforeCursor;->this$0:Landroid/view/inputmethod/InputConnectionCallProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
