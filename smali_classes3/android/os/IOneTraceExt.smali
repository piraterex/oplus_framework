.class public interface abstract Landroid/os/IOneTraceExt;
.super Ljava/lang/Object;
.source "IOneTraceExt.java"


# static fields
.field public static final blacklist TRACE_TAG_BINDER:J = 0x200000000L

.field public static final blacklist TRACE_TAG_LOOPER:J = 0x100000000L


# virtual methods
.method public blacklist begin(JLjava/lang/String;)V
    .locals 0
    .param p1, "traceTag"    # J
    .param p3, "methodName"    # Ljava/lang/String;

    .line 15
    return-void
.end method

.method public blacklist beginAsync(JLjava/lang/String;I)V
    .locals 0
    .param p1, "traceTag"    # J
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "cookie"    # I

    .line 21
    return-void
.end method

.method public blacklist end(J)V
    .locals 0
    .param p1, "traceTag"    # J

    .line 18
    return-void
.end method

.method public blacklist endAsync(JLjava/lang/String;I)V
    .locals 0
    .param p1, "traceTag"    # J
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "cookie"    # I

    .line 24
    return-void
.end method

.method public blacklist isEnable(J)Z
    .locals 1
    .param p1, "traceTag"    # J

    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matchDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 27
    return-object p1
.end method

.method public blacklist setActiveState(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .line 12
    return-void
.end method
