.class public Lcom/oplus/bracket/OplusBracketLog;
.super Ljava/lang/Object;
.source "OplusBracketLog.java"


# static fields
.field public static whitelist DEBUG:Z = false

.field public static final whitelist DEBUG_PARSER:Z = false

.field public static whitelist DEBUG_QUERY:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBracketLog"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 25
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG:Z

    .line 26
    sput-boolean v1, Lcom/oplus/bracket/OplusBracketLog;->DEBUG_QUERY:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist d(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 30
    sget-boolean v0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "OplusBracketLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static whitelist d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 48
    sget-boolean v0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBracketLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static whitelist e(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "OplusBracketLog"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBracketLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public static whitelist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBracketLog"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    return-void
.end method

.method public static whitelist i(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG_QUERY:Z

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "OplusBracketLog"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void
.end method

.method public static whitelist i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 54
    sget-boolean v0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG_QUERY:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBracketLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static whitelist openLogSwitch(Z)V
    .locals 2
    .param p0, "on"    # Z

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openBracketLogSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBracketLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sput-boolean p0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG:Z

    .line 70
    sput-boolean p0, Lcom/oplus/bracket/OplusBracketLog;->DEBUG_QUERY:Z

    .line 71
    return-void
.end method
