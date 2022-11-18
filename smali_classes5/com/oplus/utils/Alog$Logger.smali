.class public abstract Lcom/oplus/utils/Alog$Logger;
.super Ljava/lang/Object;
.source "Alog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utils/Alog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Logger"
.end annotation


# static fields
.field public static final blacklist ASSERT:I = 0x7

.field public static final blacklist DEBUG:I = 0x3

.field public static final blacklist ERROR:I = 0x6

.field public static final blacklist INFO:I = 0x4

.field public static final blacklist VERBOSE:I = 0x2

.field public static final blacklist WARN:I = 0x5


# instance fields
.field final blacklist explicitTag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/oplus/utils/Alog$Logger;->explicitTag:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private blacklist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 172
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 173
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 174
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 175
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 176
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist d(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/oplus/utils/Alog$Logger;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public blacklist d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 128
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/oplus/utils/Alog$Logger;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public blacklist e(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/oplus/utils/Alog$Logger;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public blacklist e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 136
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/oplus/utils/Alog$Logger;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method protected blacklist formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 180
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTag()Ljava/lang/String;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/oplus/utils/Alog$Logger;->explicitTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/oplus/utils/Alog$Logger;->explicitTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 144
    :cond_0
    return-object v0
.end method

.method public blacklist i(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/oplus/utils/Alog$Logger;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public blacklist i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 120
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/oplus/utils/Alog$Logger;->prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method protected abstract blacklist log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method varargs blacklist prepareLog(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lcom/oplus/utils/Alog$Logger;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "tag":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const/4 p3, 0x0

    .line 154
    :cond_0
    if-nez p3, :cond_2

    .line 155
    if-nez p2, :cond_1

    .line 156
    return-void

    .line 158
    :cond_1
    invoke-direct {p0, p2}, Lcom/oplus/utils/Alog$Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 160
    :cond_2
    if-eqz p4, :cond_3

    array-length v1, p4

    if-lez v1, :cond_3

    .line 161
    invoke-virtual {p0, p3, p4}, Lcom/oplus/utils/Alog$Logger;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 163
    :cond_3
    if-eqz p2, :cond_4

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/oplus/utils/Alog$Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 168
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/oplus/utils/Alog$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    return-void
.end method
