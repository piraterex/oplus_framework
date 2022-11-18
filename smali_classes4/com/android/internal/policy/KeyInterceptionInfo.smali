.class public Lcom/android/internal/policy/KeyInterceptionInfo;
.super Ljava/lang/Object;
.source "KeyInterceptionInfo.java"


# instance fields
.field public final blacklist layoutParamsPrivateFlags:I

.field public final blacklist layoutParamsType:I

.field public final blacklist windowTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .param p3, "title"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 32
    iput p2, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    .line 33
    iput-object p3, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 34
    return-void
.end method
