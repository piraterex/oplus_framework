.class public final Lcom/android/internal/util/dump/DumpableContainerImpl;
.super Ljava/lang/Object;
.source "DumpableContainerImpl.java"

# interfaces
.implements Landroid/util/DumpableContainer;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mDumpables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Dumpable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/android/internal/util/dump/DumpableContainerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/dump/DumpableContainerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    return-void
.end method

.method private blacklist dumpNumberDumpables(Landroid/util/IndentingPrintWriter;)I
    .locals 2
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;

    .line 100
    iget-object v0, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 101
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 102
    const-string v1, "No dumpables"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, " dumpables"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 106
    :goto_0
    return v0
.end method

.method private blacklist indentAndDump(Landroid/util/IndentingPrintWriter;Landroid/util/Dumpable;[Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Landroid/util/IndentingPrintWriter;
    .param p2, "dumpable"    # Landroid/util/Dumpable;
    .param p3, "args"    # [Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 151
    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 154
    throw v0
.end method

.method static synthetic blacklist lambda$addDumpable$0(Landroid/util/Dumpable;)Ljava/lang/String;
    .locals 2
    .param p0, "dumpable"    # Landroid/util/Dumpable;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addDumpable(Landroid/util/Dumpable;)Z
    .locals 2
    .param p1, "dumpable"    # Landroid/util/Dumpable;

    .line 45
    const-string v0, "dumpable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/dump/DumpableContainerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/util/dump/DumpableContainerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/util/Dumpable;)V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x0

    return v1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist dumpAllDumpables(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 132
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2, p1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-direct {p0, v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpNumberDumpables(Landroid/util/IndentingPrintWriter;)I

    move-result v1

    .line 134
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 136
    return-void

    .line 138
    :cond_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    .local v3, "dumpableName":Ljava/lang/String;
    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Dumpable;

    .line 144
    .local v4, "dumpable":Landroid/util/Dumpable;
    invoke-direct {p0, v0, v4, p3}, Lcom/android/internal/util/dump/DumpableContainerImpl;->indentAndDump(Landroid/util/IndentingPrintWriter;Landroid/util/Dumpable;[Ljava/lang/String;)V

    .line 140
    .end local v3    # "dumpableName":Ljava/lang/String;
    .end local v4    # "dumpable":Landroid/util/Dumpable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist dumpOneDumpable(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "dumpableName"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 163
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2, p1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Dumpable;

    .line 165
    .local v1, "dumpable":Landroid/util/Dumpable;
    if-nez v1, :cond_0

    .line 166
    const-string v2, "No "

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 167
    return-void

    .line 169
    :cond_0
    invoke-virtual {v0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(C)V

    .line 170
    invoke-direct {p0, v0, v1, p4}, Lcom/android/internal/util/dump/DumpableContainerImpl;->indentAndDump(Landroid/util/IndentingPrintWriter;Landroid/util/Dumpable;[Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public blacklist listDumpables(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 113
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2, p1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-direct {p0, v0}, Lcom/android/internal/util/dump/DumpableContainerImpl;->dumpNumberDumpables(Landroid/util/IndentingPrintWriter;)I

    move-result v1

    .line 116
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 118
    return-void

    .line 120
    :cond_0
    const-string v2, ": "

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 121
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 122
    iget-object v3, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 123
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 121
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 126
    return-void
.end method

.method public whitelist removeDumpable(Landroid/util/Dumpable;)Z
    .locals 6
    .param p1, "dumpable"    # Landroid/util/Dumpable;

    .line 66
    const-string v0, "dumpable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Dumpable;

    .line 76
    .local v2, "candidate":Landroid/util/Dumpable;
    if-nez v2, :cond_1

    .line 80
    return v1

    .line 84
    :cond_1
    if-eq v2, p1, :cond_2

    .line 85
    sget-object v3, Lcom/android/internal/util/dump/DumpableContainerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDumpable(): passed dumpable ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but internal dumpable with that name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/android/internal/util/dump/DumpableContainerImpl;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/4 v1, 0x1

    return v1
.end method
